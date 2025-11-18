import { ethers } from "hardhat";

/**
 * Configure ShareVault to recognize the ConfidentialFundraising contract
 * This must be called after deployment before any contributions can be made
 */
async function main() {
  // Get deployed contract addresses
  const VAULT_ADDRESS = process.env.VAULT_ADDRESS;
  const CAMPAIGN_ADDRESS = process.env.CAMPAIGN_ADDRESS;

  if (!VAULT_ADDRESS || !CAMPAIGN_ADDRESS) {
    console.error("❌ Error: Please set VAULT_ADDRESS and CAMPAIGN_ADDRESS environment variables");
    console.log("\nExample:");
    console.log("VAULT_ADDRESS=0x... CAMPAIGN_ADDRESS=0x... npx hardhat run scripts/configure-vault.ts --network sepolia");
    process.exit(1);
  }

  console.log("🔧 Configuring ShareVault...");
  console.log("  Vault Address:", VAULT_ADDRESS);
  console.log("  Campaign Address:", CAMPAIGN_ADDRESS);

  // Get the ShareVault contract
  const ShareVault = await ethers.getContractFactory("ShareVault");
  const vault = ShareVault.attach(VAULT_ADDRESS);

  // Set the campaign contract
  console.log("\n📝 Setting campaign contract...");
  const tx = await vault.setCampaignContract(CAMPAIGN_ADDRESS);
  console.log("  Transaction hash:", tx.hash);

  console.log("⏳ Waiting for confirmation...");
  await tx.wait();

  console.log("✅ ShareVault configured successfully!");
  console.log("\n🎉 You can now make contributions!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
