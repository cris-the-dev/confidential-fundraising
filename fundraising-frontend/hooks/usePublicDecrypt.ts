import { useState } from "react";
import { getFhevmInstance } from "../lib/fhevm/init";

/**
 * Hook for using the v0.9 self-relaying public decryption workflow
 * @returns Functions to decrypt encrypted handles using the relayer SDK
 */
export function usePublicDecrypt() {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<Error | null>(null);

  /**
   * Decrypt an encrypted handle using the v0.9 publicDecrypt API
   * @param handle The encrypted handle (bytes32 as hex string)
   * @param contractAddress The contract address that owns the encrypted value
   * @returns Object containing cleartext value and cryptographic proof
   */
  const publicDecrypt = async (
    handle: string,
    contractAddress: string
  ): Promise<{ cleartext: bigint; proof: Uint8Array }> => {
    setLoading(true);
    setError(null);

    try {
      // Get the relayer SDK instance from window (loaded via CDN)
      const relayerSDK = (window as any).relayerSDK;
      if (!relayerSDK) {
        throw new Error(
          "RelayerSDK not loaded. Make sure FHEVM is initialized."
        );
      }

      console.log("🔓 Starting public decryption...");
      console.log("  - Handle:", handle);
      console.log("  - Contract:", contractAddress);

      // Call the new publicDecrypt function from v0.3.0-5
      const result = await relayerSDK.publicDecrypt(handle, contractAddress);

      if (!result) {
        throw new Error("publicDecrypt returned null or undefined");
      }

      // Extract cleartext and proof from result
      const { cleartext, proof } = result;

      if (cleartext === undefined || cleartext === null) {
        throw new Error("Cleartext not found in decryption result");
      }

      if (!proof) {
        throw new Error("Proof not found in decryption result");
      }

      console.log("✅ Decryption successful!");
      console.log("  - Cleartext:", cleartext.toString());
      console.log("  - Proof length:", proof.length, "bytes");

      // Convert cleartext to bigint if it isn't already
      const cleartextBigInt =
        typeof cleartext === "bigint" ? cleartext : BigInt(cleartext);

      // Ensure proof is Uint8Array
      const proofUint8 =
        proof instanceof Uint8Array ? proof : new Uint8Array(proof);

      return {
        cleartext: cleartextBigInt,
        proof: proofUint8,
      };
    } catch (err) {
      console.error("❌ Public decryption failed:", err);
      const error =
        err instanceof Error ? err : new Error("Unknown decryption error");
      setError(error);
      throw error;
    } finally {
      setLoading(false);
    }
  };

  return {
    publicDecrypt,
    loading,
    error,
  };
}
