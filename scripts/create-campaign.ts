const hre = require("hardhat");
const { parseEther } = require("ethers");

async function main() {
  const ethers = hre.ethers;
  const CAMPAIGN_ADDRESS = "0xc598A7B075bCd35D1996E3700b74f9623A4D2E37";
  const TITLE = "Demo Fundraising Campaign";
  const DESCRIPTION =
    "quick demo campaign 1.";
  const TARGET_ETH = "0.0001";
  const DURATION_SECONDS = "300";

  const targetWei = parseEther(TARGET_ETH);
  const durationSeconds = BigInt(parseInt(DURATION_SECONDS));

  console.log("\n========================================");
  console.log("🚀 CREATING NEW CAMPAIGN");
  console.log("========================================");
  console.log("Contract Address:", CAMPAIGN_ADDRESS);
  console.log("\n📋 Campaign Details:");
  console.log("├─ Title:", TITLE);
  console.log("├─ Description:", DESCRIPTION);
  console.log("├─ Target:", TARGET_ETH, "ETH");
  console.log("├─ Target (wei):", targetWei.toString());
  console.log("├─ Duration:", DURATION_SECONDS, "seconds");
  console.log("└─ Duration (seconds):", durationSeconds.toString());
  console.log("========================================\n");

  // Get the signer
  const [signer] = await ethers.getSigners();
  console.log("📝 Creating campaign from address:", signer.address);

  // Get the ConfidentialFundraising contract
  const ConfidentialFundraising = await ethers.getContractFactory(
    "ConfidentialFundraising"
  );
  const fundraising = ConfidentialFundraising.attach(CAMPAIGN_ADDRESS);

  try {
    // Create the campaign
    console.log("\n⏳ Submitting transaction...");
    const tx = await fundraising.createCampaign(
      TITLE,
      DESCRIPTION,
      targetWei,
      durationSeconds
    );

    console.log("✅ Transaction submitted!");
    console.log("  Transaction hash:", tx.hash);

    // Wait for confirmation
    console.log("\n⏳ Waiting for confirmation...");
    const receipt = await tx.wait();

    console.log("✅ Transaction confirmed!");
    console.log("  Block number:", receipt?.blockNumber);
    console.log("  Gas used:", receipt?.gasUsed?.toString());

    // Parse the event to get the campaign ID
    const event = receipt?.logs.find((log: any) => {
      try {
        const parsed = fundraising.interface.parseLog({
          topics: log.topics as string[],
          data: log.data,
        });
        return parsed?.name === "CampaignCreated";
      } catch {
        return false;
      }
    });

    if (event) {
      const parsed = fundraising.interface.parseLog({
        topics: event.topics as string[],
        data: event.data,
      });

      const campaignId = parsed?.args[0];
      const owner = parsed?.args[1];
      const title = parsed?.args[2];
      const target = parsed?.args[3];
      const deadline = parsed?.args[4];

      console.log("\n========================================");
      console.log("🎉 CAMPAIGN CREATED SUCCESSFULLY!");
      console.log("========================================");
      console.log("Campaign ID:", campaignId.toString());
      console.log("Owner:", owner);
      console.log("Title:", title);
      console.log("Target:", ethers.formatEther(target), "ETH");
      console.log(
        "Deadline:",
        new Date(Number(deadline) * 1000).toLocaleString()
      );
      console.log("========================================\n");

      // Fetch campaign details to verify
      console.log("🔍 Verifying campaign details...");
      const campaign = await fundraising.getCampaign(campaignId);
      console.log("✅ Campaign verified on-chain!");
      console.log("  Owner:", campaign[0]);
      console.log("  Title:", campaign[1]);
      console.log("  Description:", campaign[2]);
      console.log("  Target:", ethers.formatEther(campaign[3]), "ETH");
      console.log(
        "  Deadline:",
        new Date(Number(campaign[4]) * 1000).toLocaleString()
      );
      console.log("  Finalized:", campaign[5]);
      console.log("  Cancelled:", campaign[6]);

      console.log("\n📝 Next steps:");
      console.log(
        "1. Share the Campaign ID with contributors:",
        campaignId.toString()
      );
      console.log("2. Contributors can now make encrypted contributions");
      console.log("3. After the deadline, you can finalize the campaign");
      console.log("========================================\n");
    } else {
      console.log("\n⚠️ Campaign created but event not found in logs");
      console.log(
        "The campaign was created successfully but we couldn't parse the campaign ID from events."
      );
    }
  } catch (error: any) {
    console.error("\n❌ Error creating campaign:", error.message);

    // Provide helpful error messages
    if (error.message.includes("InvalidTarget")) {
      console.log("\n💡 Tip: Target must be greater than 0");
    } else if (error.message.includes("InvalidDuration")) {
      console.log("\n💡 Tip: Duration must be greater than 0");
    } else if (error.message.includes("EmptyTitle")) {
      console.log("\n💡 Tip: Title cannot be empty");
    } else if (error.message.includes("insufficient funds")) {
      console.log("\n💡 Tip: Make sure you have enough ETH to pay for gas");
    }

    process.exit(1);
  }
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
