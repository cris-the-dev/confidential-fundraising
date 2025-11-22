import { useCallback, useState } from "react";
import { useWallets } from "@privy-io/react-auth";
import {
  createWalletClient,
  createPublicClient,
  http,
  custom,
  publicActions,
  parseEther,
  toHex,
} from "viem";
import { sepolia } from "viem/chains";
import { useEncrypt } from "./useEncrypt";
import { usePublicDecrypt } from "./usePublicDecrypt";
import { CONTRACT_ADDRESS, VAULT_ADDRESS } from "../lib/contracts/config";
import { FUNDRAISING_ABI } from "../lib/contracts/abi";
import { Campaign } from "../types";
import { VAULT_ABI } from "../lib/contracts/vaultAbi";

export function useCampaigns() {
  const { wallets } = useWallets();
  const { encrypt64 } = useEncrypt();
  const { publicDecrypt } = usePublicDecrypt();
  const [loading, setLoading] = useState(false);

  // Public client for read-only operations (no wallet required)
  const getPublicClient = useCallback(() => {
    return createPublicClient({
      chain: sepolia,
      transport: http(),
    });
  }, []);

  const getClient = useCallback(async () => {
    const wallet = wallets[0];
    if (!wallet) throw new Error("No wallet connected");

    await wallet.switchChain(sepolia.id);
    const provider = await wallet.getEthereumProvider();

    return createWalletClient({
      account: wallet.address as `0x${string}`,
      chain: sepolia,
      transport: custom(provider),
    }).extend(publicActions);
  }, [wallets]);

  const createCampaign = async (
    title: string,
    description: string,
    targetAmount: string,
    durationDays: number
  ) => {
    setLoading(true);
    try {
      const client = await getClient();

      const targetWei = parseEther(targetAmount);

      const MAX_UINT64 = BigInt("18446744073709551615");
      if (targetWei > MAX_UINT64) {
        throw new Error("Target amount too large for uint64");
      }

      const durationSeconds = BigInt(durationDays * 24 * 60 * 60);

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "createCampaign",
        args: [title, description, targetWei, durationSeconds],
      });

      await client.waitForTransactionReceipt({ hash });
      return hash;
    } catch (error) {
      console.error("Error creating campaign:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  const contribute = async (campaignId: number, amount: string) => {
    try {
      setLoading(true);
      const client = await getClient();

      const amountWei = parseEther(amount);

      const MAX_UINT64 = BigInt("18446744073709551615");
      if (amountWei > MAX_UINT64) {
        throw new Error("Amount too large for uint64");
      }

      console.log(
        "💰 Contributing:",
        amount,
        "ETH (",
        amountWei.toString(),
        "Wei)"
      );

      const { encryptedData, proof } = await encrypt64(amountWei);

      const encryptedDataHex = toHex(encryptedData);
      const proofHex = toHex(proof);

      console.log("📤 Sending transaction...");

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "contribute",
        args: [campaignId, encryptedDataHex, proofHex],
      });

      console.log("⏳ Transaction submitted:", hash);
      const receipt = await client.waitForTransactionReceipt({ hash });

      if (receipt.status === "success") {
        console.log("✅ Transaction confirmed!");
      } else {
        throw new Error("Transaction reverted");
      }

      return hash;
    } catch (error) {
      setLoading(false);
      console.error("❌ Contribution failed:", error);
      throw error;
    }
  };

  /**
   * Step 1: Mark contribution as publicly decryptable (v0.9 self-relaying)
   */
  const requestMyContributionDecryption = async (campaignId: number) => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "requestMyContributionDecryption",
        args: [campaignId],
      });

      await client.waitForTransactionReceipt({ hash });
      console.log("✅ Marked as publicly decryptable (v0.9)");
      return hash;
    } catch (error) {
      console.error("Error requesting decryption:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  /**
   * Step 2 & 3: Complete self-relaying decryption workflow for contribution
   * Gets encrypted handle, decrypts it, and submits proof to contract
   */
  const completeMyContributionDecryption = async (campaignId: number) => {
    setLoading(true);
    try {
      const wallet = wallets[0];
      if (!wallet) throw new Error("No wallet connected");

      const client = await getClient();

      // Step 1: Mark as decryptable
      console.log("📝 Step 1: Marking as publicly decryptable...");
      await requestMyContributionDecryption(campaignId);

      // Step 2: Get encrypted handle
      console.log("🔍 Step 2: Getting encrypted handle...");
      const handle = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getEncryptedContribution",
        args: [campaignId, wallet.address as `0x${string}`],
      });

      console.log("  - Handle:", handle);

      // Step 3: Decrypt using relayer SDK
      console.log("🔓 Step 3: Decrypting with relayer SDK...");
      const { cleartext, proof } = await publicDecrypt(
        handle as string,
        CONTRACT_ADDRESS
      );

      // Step 4: Submit proof to contract
      console.log("📤 Step 4: Submitting proof to contract...");
      const submitHash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "submitMyContributionDecryption",
        args: [campaignId, cleartext, toHex(proof)],
      });

      await client.waitForTransactionReceipt({ hash: submitHash });
      console.log("✅ Decryption complete and verified!");

      return { cleartext, hash: submitHash };
    } catch (error) {
      console.error("❌ Complete decryption workflow failed:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  /**
   * Step 1: Mark total raised as publicly decryptable (v0.9 self-relaying)
   */
  const requestTotalRaisedDecryption = async (campaignId: number) => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "requestTotalRaisedDecryption",
        args: [campaignId],
      });

      await client.waitForTransactionReceipt({ hash });
      console.log("✅ Total raised marked as publicly decryptable (v0.9)");
      return hash;
    } catch (error) {
      console.error("Error requesting total decryption:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  /**
   * Complete self-relaying decryption workflow for total raised
   */
  const completeTotalRaisedDecryption = async (campaignId: number) => {
    setLoading(true);
    try {
      const client = await getClient();

      // Step 1: Mark as decryptable
      console.log("📝 Step 1: Marking total raised as publicly decryptable...");
      await requestTotalRaisedDecryption(campaignId);

      // Step 2: Get encrypted handle
      console.log("🔍 Step 2: Getting encrypted total raised handle...");
      const handle = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getEncryptedTotalRaised",
        args: [campaignId],
      });

      console.log("  - Handle:", handle);

      // Step 3: Decrypt using relayer SDK
      console.log("🔓 Step 3: Decrypting total raised with relayer SDK...");
      const { cleartext, proof } = await publicDecrypt(
        handle as string,
        CONTRACT_ADDRESS
      );

      // Step 4: Submit proof to contract
      console.log("📤 Step 4: Submitting total raised proof to contract...");
      const submitHash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "submitTotalRaisedDecryption",
        args: [campaignId, cleartext, toHex(proof)],
      });

      await client.waitForTransactionReceipt({ hash: submitHash });
      console.log("✅ Total raised decryption complete and verified!");

      return { cleartext, hash: submitHash };
    } catch (error) {
      console.error("❌ Complete total raised decryption failed:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };


  const finalizeCampaign = async (
    campaignId: number,
    tokenName: string,
    tokenSymbol: string
  ) => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "finalizeCampaign",
        args: [campaignId, tokenName, tokenSymbol],
      });

      await client.waitForTransactionReceipt({ hash });
      console.log("✅ Campaign finalized");
    } catch (error) {
      console.error("Error finalizing campaign:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  const cancelCampaign = async (campaignId: number) => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "cancelCampaign",
        args: [campaignId],
      });

      await client.waitForTransactionReceipt({ hash });
      return hash;
    } catch (error) {
      console.error("Error cancelling campaign:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  const claimTokens = async (campaignId: number) => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "claimTokens",
        args: [campaignId],
      });

      await client.waitForTransactionReceipt({ hash });
      return hash;
    } catch (error) {
      console.error("Error claiming tokens:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  const getCampaign = async (campaignId: number): Promise<Campaign> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getCampaign",
        args: [campaignId],
      });

      return {
        id: campaignId,
        owner: result[0],
        title: result[1],
        description: result[2],
        targetAmount: result[3],
        deadline: Number(result[4]),
        finalized: result[5],
        cancelled: result[6],
        tokenAddress: result[7],
      };
    } catch (error) {
      console.error("Error fetching campaign:", error);
      throw error;
    }
  };

  const getCampaignCount = async (): Promise<number> => {
    try {
      const client = getPublicClient();

      const count = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "campaignCount",
      });

      return Number(count);
    } catch (error) {
      console.error("Error fetching campaign count:", error);
      throw error;
    }
  };

  const getContributionStatus = async (
    campaignId: number,
    userAddress: string
  ): Promise<{
    status: number;
    contribution: bigint;
    cacheExpiry: bigint;
  }> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getContributionStatus",
        args: [campaignId, userAddress as `0x${string}`],
      });

      return {
        status: Number(result[0]),
        contribution: BigInt(result[1]),
        cacheExpiry: BigInt(result[2]),
      };
    } catch (error) {
      console.error("Error fetching contribution status:", error);
      throw error;
    }
  };

  const checkHasContribution = async (
    campaignId: number,
    userAddress: string
  ): Promise<boolean> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "hasContribution",
        args: [campaignId, userAddress as `0x${string}`],
      });

      return result as boolean;
    } catch (error) {
      console.error("Error checking contribution:", error);
      return false;
    }
  };

  const checkHasClaimed = async (
    campaignId: number,
    userAddress: string
  ): Promise<boolean> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "hasClaimed",
        args: [campaignId, userAddress as `0x${string}`],
      });

      return result as boolean;
    } catch (error) {
      console.error("Error checking if claimed:", error);
      return false;
    }
  };

  const getTotalRaisedStatus = async (
    campaignId: number
  ): Promise<{
    status: number;
    totalRaised: bigint;
    cacheExpiry: bigint;
  }> => {
    try {
      const client = await getClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getTotalRaisedStatus",
        args: [campaignId],
      });

      return {
        status: Number(result[0]),
        totalRaised: BigInt(result[1]),
        cacheExpiry: BigInt(result[2]),
      };
    } catch (error) {
      console.error("Error fetching total raised status:", error);
      throw error;
    }
  };

  // Vault deposit
  const depositToVault = async (amount: string) => {
    setLoading(true);
    try {
      const client = await getClient();
      const amountWei = parseEther(amount);

      // Validate uint64 range
      const MAX_UINT64 = BigInt("18446744073709551615");
      if (amountWei > MAX_UINT64) {
        throw new Error("Amount too large for uint64");
      }

      const hash = await client.writeContract({
        address: VAULT_ADDRESS, // Add this to your config
        abi: VAULT_ABI, // Add vault ABI
        functionName: "deposit",
        args: [],
        value: amountWei,
      });

      await client.waitForTransactionReceipt({ hash });
      return hash;
    } catch (error) {
      console.error("Error depositing to vault:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  /**
   * Step 1: Mark available balance as publicly decryptable (v0.9 self-relaying)
   */
  const requestAvailableBalanceDecryption = async () => {
    setLoading(true);
    try {
      const client = await getClient();

      const hash = await client.writeContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "requestAvailableBalanceDecryption",
        args: [],
      });

      await client.waitForTransactionReceipt({ hash });
      console.log("✅ Available balance marked as publicly decryptable (v0.9)");
      return hash;
    } catch (error) {
      console.error("Error requesting balance decryption:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  /**
   * Complete self-relaying decryption workflow for available balance
   */
  const completeAvailableBalanceDecryption = async () => {
    setLoading(true);
    try {
      const wallet = wallets[0];
      if (!wallet) throw new Error("No wallet connected");

      const client = await getClient();

      // Step 1: Mark as decryptable
      console.log("📝 Step 1: Marking available balance as publicly decryptable...");
      await requestAvailableBalanceDecryption();

      // Step 2: Get the pending available balance handle
      // This is the handle that was marked as publicly decryptable
      console.log("🔍 Step 2: Getting pending available balance handle...");
      const handle = await client.readContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "getPendingAvailableBalanceHandle",
      });

      console.log("  - Handle:", handle);

      // Step 3: Decrypt using relayer SDK
      console.log("🔓 Step 3: Decrypting available balance with relayer SDK...");
      const { cleartext, proof } = await publicDecrypt(
        handle as string,
        VAULT_ADDRESS
      );

      // Step 4: Submit proof to contract
      console.log("📤 Step 4: Submitting available balance proof to contract...");
      const submitHash = await client.writeContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "submitAvailableBalanceDecryption",
        args: [cleartext, toHex(proof)],
      });

      await client.waitForTransactionReceipt({ hash: submitHash });
      console.log("✅ Available balance decryption complete and verified!");

      return { cleartext, hash: submitHash };
    } catch (error) {
      console.error("❌ Complete available balance decryption failed:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };


  // Get available balance status
  const getAvailableBalanceStatus = async (): Promise<{
    status: number;
    availableAmount: bigint;
    cacheExpiry: bigint;
  }> => {
    try {
      const client = await getClient();
      const userAddress = wallets[0]?.address;

      if (!userAddress) throw new Error("No wallet connected");

      const result = await client.readContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "getAvailableBalanceStatus",
      });

      return {
        status: Number(result[0]),
        availableAmount: BigInt(result[1]),
        cacheExpiry: BigInt(result[2]),
      };
    } catch (error) {
      console.error("Error fetching balance status:", error);
      throw error;
    }
  };

  // Withdraw from vault
  const withdrawFromVault = async (amount: string) => {
    setLoading(true);
    try {
      const client = await getClient();
      const amountWei = parseEther(amount);

      // Validate uint64 range
      const MAX_UINT64 = BigInt("18446744073709551615");
      if (amountWei > MAX_UINT64) {
        throw new Error("Amount too large for uint64");
      }

      const hash = await client.writeContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "withdraw",
        args: [amountWei],
      });

      await client.waitForTransactionReceipt({ hash });
      return hash;
    } catch (error) {
      console.error("Error withdrawing from vault:", error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  const getEncryptedBalanceAndLocked = async (): Promise<{
    encryptedBalance: string;
    encryptedLocked: string;
  }> => {
    try {
      const client = await getClient();
      const userAddress = wallets[0]?.address;

      if (!userAddress) throw new Error("No wallet connected");

      const result = await client.readContract({
        address: VAULT_ADDRESS,
        abi: VAULT_ABI,
        functionName: "getEncryptedBalanceAndLocked",
      });

      return {
        encryptedBalance: result[0],
        encryptedLocked: result[1]
      };
    } catch (error) {
      console.error("Error fetching balance status:", error);
      throw error;
    }
  };

  const getEncryptedContribution = async (
    campaignId: number,
    userAddress: string
  ): Promise<string> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getEncryptedContribution",
        args: [campaignId, userAddress as `0x${string}`],
      });

      return result as string;
    } catch (error) {
      console.error("Error fetching encrypted contribution:", error);
      throw error;
    }
  };

  const getEncryptedTotalRaised = async (
    campaignId: number
  ): Promise<string> => {
    try {
      const client = getPublicClient();

      const result = await client.readContract({
        address: CONTRACT_ADDRESS,
        abi: FUNDRAISING_ABI,
        functionName: "getEncryptedTotalRaised",
        args: [campaignId],
      });

      return result as string;
    } catch (error) {
      console.error("Error fetching encrypted total raised:", error);
      throw error;
    }
  };

  return {
    loading,
    createCampaign,
    contribute,
    finalizeCampaign,
    cancelCampaign,
    claimTokens,
    getCampaign,
    getCampaignCount,
    // v0.9 decryption workflow - step 1 only
    requestMyContributionDecryption,
    requestTotalRaisedDecryption,
    requestAvailableBalanceDecryption,
    // v0.9 complete decryption workflow (all steps)
    completeMyContributionDecryption,
    completeTotalRaisedDecryption,
    completeAvailableBalanceDecryption,
    // Status and getters
    getContributionStatus,
    checkHasContribution,
    checkHasClaimed,
    getTotalRaisedStatus,
    getAvailableBalanceStatus,
    // Vault operations
    depositToVault,
    withdrawFromVault,
    // Encrypted handles
    getEncryptedBalanceAndLocked,
    getEncryptedContribution,
    getEncryptedTotalRaised,
  };
}
