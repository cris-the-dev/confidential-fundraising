# 🔐 Confidential Fundraising Platform

A privacy-preserving decentralized fundraising platform built with **FHEVM (Fully Homomorphic Encryption Virtual Machine)**. Contributors can support campaigns while keeping their contribution amounts completely private, with only authorized parties able to decrypt sensitive information.

Author: [@cris_thedev](https://x.com/cris_thedev)
---

| Contract Name | Network | Contract Address
|----------|-------------|--------|
| ConfidentialFundraising | Sepolia | [`0x203db914535Dd91A10cC934FC813C847d25B488e`](https://sepolia.etherscan.io/address/0x203db914535Dd91A10cC934FC813C847d25B488e) |
| ShareVault | Sepolia | [`0xC99D0fF63B8b86F227F08F37b40a563Ccc23c65b`](https://sepolia.etherscan.io/address/0xC99D0fF63B8b86F227F08F37b40a563Ccc23c65b) |
---
Demo Video: [Loom demo video](https://www.loom.com/share/79e14fa3ebcf46188041079983966130)
---

## 📖 Concept

The Confidential Fundraising Platform revolutionizes crowdfunding by combining blockchain transparency with **cryptographic privacy**. Traditional fundraising platforms expose all contribution amounts publicly, which can influence donor behavior and compromise privacy. My solution leverages **homomorphic encryption** to keep contribution amounts encrypted on-chain while still enabling mathematical operations like summing total contributions.

### Key Features

- **🔒 Private Contributions**: All contribution amounts are encrypted using FHEVM technology
- **🎯 Goal-Based Campaigns**: Campaigns have targets and deadlines
- **🪙 Token Rewards**: Successful campaigns distribute ERC20 tokens proportionally to contributors
- **💰 Automatic Refunds**: Failed campaigns automatically refund contributors
- **🔐 Secure Escrow**: ShareVault contract manages all funds with encrypted balance tracking
- **⚡ Self-Relaying Decryption**: Instant decryption with cryptographic proofs (FHEVM v0.9)
- **🎭 Zero-Knowledge**: Campaign totals remain private until authorized decryption
- **🚀 User-Controlled**: Contributors sign and submit their own decryption requests

---

## 🏗️ Architecture Overview

The platform consists of three main layers: **Smart Contracts** (on-chain logic), **Frontend Application** (user interface), and **FHEVM Layer** (encryption/decryption).

<img src="diagrams/png/architecture-overview.png" alt="Architecture Overview" width="80%">

### Smart Contract Architecture

<img src="diagrams/png/smart-contract-architecture.png" alt="Smart Contract Architecture" width="80%">

---

## 🔄 Application Flows

### 1. Campaign Creation Flow

<img src="diagrams/png/campaign-creation.png" alt="Campaign Creation Flow" width="80%">

### 2. Contribution Flow

<img src="diagrams/png/contribute.png" alt="Contribution Flow" width="80%">

### 3. Campaign Finalization Flow

<img src="diagrams/png/campaign-finalization.png" alt="Campaign Finalization Flow" width="80%">

### 4. Token Claim Flow

<img src="diagrams/png/token-claim.png" alt="Token Claim Flow" width="80%">

### 5. Vault Balance & Withdrawal Flow

<img src="diagrams/png/vault-balance-withdrawal.png" alt="Vault Balance & Withdrawal Flow" width="80%">

### 6. Encryption & Decryption Flow (Technical)

```mermaid
---
config:
  look: handDrawn
  theme: neutral
---

graph TB
    subgraph "📤 Encryption Process"
        A[Plain Value<br/>e.g., 100 ETH] --> B[FHEVM SDK<br/>createEncryptedInput]
        B --> C[Encrypted Value<br/>euint64]
        B --> D[Proof<br/>ZK Proof]
        C --> E[Smart Contract<br/>Store On-Chain]
        D --> E
    end

    subgraph "📥 Self-Relaying Decryption Process"
        F[User Request] --> G[1. Mark as Publicly<br/>Decryptable]
        G --> H[Smart Contract<br/>FHE.makePubliclyDecryptable]
        H --> I[2. Get Encrypted<br/>Handle]
        I --> J[3. Relayer SDK<br/>publicDecrypt]
        J --> K[Cleartext +<br/>Proof]
        K --> L[4. Submit Proof<br/>to Contract]
        L --> M[Smart Contract<br/>FHE.checkSignatures]
        M --> N[✅ Verified<br/>Decryption]
    end

    E -.Stored On-Chain.-> F

    style A fill:#ffcccc,stroke:#333,stroke-width:2px
    style N fill:#ccffcc,stroke:#333,stroke-width:2px
    style E fill:#cce5ff,stroke:#333,stroke-width:2px
    style H fill:#cce5ff,stroke:#333,stroke-width:2px
    style J fill:#ffd700,stroke:#333,stroke-width:3px
    style M fill:#ff9966,stroke:#333,stroke-width:2px
```

#### Decryption Workflow Details

The platform uses **FHEVM v0.9 self-relaying decryption** for secure and instant value decryption:

**4-Step Self-Relaying Process:**

1. **Mark as Decryptable**: Contract marks the encrypted value as publicly decryptable using `FHE.makePubliclyDecryptable()`
2. **Get Handle**: Frontend retrieves the encrypted handle from the contract
3. **Decrypt**: Relayer SDK's `publicDecrypt()` decrypts the value and generates a cryptographic proof
4. **Submit Proof**: Frontend submits the cleartext and proof back to the contract for verification via `FHE.checkSignatures()`

**Benefits over Oracle-based decryption:**
- ⚡ **Instant**: No waiting for gateway callbacks (10-30 seconds)
- 🔐 **Secure**: Cryptographic proofs prevent tampering
- 👤 **User-controlled**: Users trigger and sign decryption requests
- 💰 **Cost-effective**: No reliance on third-party oracle services

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed:

| Technology | Version | Purpose |
|------------|---------|---------|
| **Node.js** | >= 20.0.0 | Runtime environment |
| **npm** or **yarn** | Latest | Package manager |
| **Git** | Latest | Version control |
| **MetaMask** or compatible wallet | Latest | Web3 wallet |
| **Hardhat** | ^2.22.15 | Smart contract development |
| **TypeScript** | >= 5.0.0 | Type safety |

### Technology Stack

#### Smart Contracts
- **Solidity**: 0.8.24
- **FHEVM Core Contracts**: ^0.8.0
- **FHEVM Solidity**: ^0.9.1 (Self-relaying decryption)
- **FHEVM Hardhat Plugin**: ^0.3.0-1
- **Hardhat**: Development environment
- **TypeChain**: Type-safe contract interactions
- **Ethers v6**: Web3 library

#### Frontend
- **Next.js**: 15.0.0 (App Router)
- **React**: 19.1.0
- **TypeScript**: ^5.0.0
- **Viem**: ^2.21.53 (Ethereum client)
- **Ethers**: ^6.13.4 (Provider/Signer)
- **Privy**: ^3.0.1 (Wallet authentication)
- **Zama FHEVM Relayer SDK**: ^0.3.0-5 (Encryption/Decryption)
- **Tailwind CSS**: ^3.4.17 (Styling)

### Installation

#### 1. Clone the Repository

```bash
git clone git@github.com:cris-the-dev/confidential-fundraising.git
cd confidential-fundraising
```

#### 2. Install Contract Dependencies

```bash
npm install
```

#### 3. Install Frontend Dependencies

```bash
cd fundraising-frontend
npm install
```

#### 4. Configure Environment Variables

**Root `.env` file** (for contract deployment):
```bash
# Create .env file in root directory
cp .env.example .env

# Add your configuration
PRIVATE_KEY=your_wallet_private_key
SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_KEY
ETHERSCAN_API_KEY=your_etherscan_api_key
```

**Frontend `.env.local` file**:
```bash
# Create .env.local in fundraising-frontend/
cd fundraising-frontend
cp .env.example .env.local

# Add your configuration
NEXT_PUBLIC_CONTRACT_ADDRESS=0x... # ConfidentialFundraising contract
NEXT_PUBLIC_VAULT_ADDRESS=0x...    # ShareVault contract
NEXT_PUBLIC_CHAIN_ID=11155111      # Sepolia testnet
NEXT_PUBLIC_RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_KEY
NEXT_PUBLIC_PRIVY_APP_ID=your_privy_app_id
```

### Development Workflow

#### Local Development with Mock FHEVM

```bash
# Terminal 1: Start local Hardhat node
npm run node

# Terminal 2: Deploy contracts to localhost
npm run deploy:localhost

# Terminal 3: Start frontend
cd fundraising-frontend
npm run dev
```

Visit `http://localhost:3000` to see the application.

#### Testing Contracts

```bash
# Run all tests
npm test

# Run tests with coverage
npm run coverage:mock

# Run specific test file
npx hardhat test test/ConfidentialFundraising.test.ts
```

#### Compile Contracts

```bash
npm run compile
```

This generates:
- Compiled artifacts in `artifacts/`
- TypeChain types in `types/`
- ABI files for frontend integration

### Deployment

#### Deploy to Sepolia Testnet

```bash
# Ensure .env is configured with PRIVATE_KEY and SEPOLIA_RPC_URL
npm run deploy:sepolia

# Verify contracts on Etherscan
npm run verify:sepolia
```

The deployment script will output contract addresses:
```
✅ ShareVault deployed to: 0x...
✅ ConfidentialFundraising deployed to: 0x...
```

Update these addresses in `fundraising-frontend/.env.local`.

#### Production Build

```bash
cd fundraising-frontend
npm run build
npm start
```

---

## 📋 Deployed Contracts Detail

### Contract Addresses (Sepolia Testnet)

Update these values in your `.env.local` file after deployment:

```
NEXT_PUBLIC_CONTRACT_ADDRESS=<ConfidentialFundraising-address>
NEXT_PUBLIC_VAULT_ADDRESS=<ShareVault-address>
NEXT_PUBLIC_CHAIN_ID=11155111
```

### Contract Specifications

#### 1. ConfidentialFundraising.sol

**Address**: Set in `NEXT_PUBLIC_CONTRACT_ADDRESS`

**Purpose**: Main fundraising campaign management contract

**Key Functions**:
| Function | Parameters | Description | Access |
|----------|-----------|-------------|--------|
| `createCampaign` | `title`, `description`, `target`, `duration` | Creates new campaign | Public |
| `contribute` | `campaignId`, `encryptedAmount`, `proof` | Contribute to campaign | Public |
| `finalizeCampaign` | `campaignId`, `tokenName`, `tokenSymbol` | Finalize after deadline | Owner only |
| `claimTokens` | `campaignId` | Claim reward tokens | Contributors |
| `requestMyContributionDecryption` | `campaignId` | Mark contribution as decryptable | Contributor |
| `submitMyContributionDecryption` | `campaignId`, `cleartext`, `proof` | Submit decryption proof | Contributor |
| `requestTotalRaisedDecryption` | `campaignId` | Mark total as decryptable | Owner only |
| `submitTotalRaisedDecryption` | `campaignId`, `cleartext`, `proof` | Submit total decryption proof | Owner only |
| `getEncryptedContribution` | `campaignId`, `user` | Get encrypted contribution | Public (read) |
| `getEncryptedTotalRaised` | `campaignId` | Get encrypted campaign total | Public (read) |

**Events**:
- `CampaignCreated(uint256 campaignId, address owner, string title, uint256 target)`
- `ContributionMade(uint256 campaignId, address contributor)`
- `CampaignFinalized(uint256 campaignId, bool successful, address tokenAddress)`
- `TokensClaimed(uint256 campaignId, address contributor, uint256 amount)`
- `CampaignFailed(uint256 campaignId)`

**Storage**:
- `Campaign[] public campaigns` - Array of all campaigns
- `mapping(uint256 => mapping(address => euint64)) contributions` - Encrypted contributions
- `mapping(uint256 => euint64) totalRaised` - Encrypted campaign totals

#### 2. ShareVault.sol

**Address**: Set in `NEXT_PUBLIC_VAULT_ADDRESS`

**Purpose**: Secure escrow managing encrypted user balances and campaign locks

**Key Functions**:
| Function | Parameters | Description | Access |
|----------|-----------|-------------|--------|
| `deposit` | - (payable) | Deposit ETH into vault | Public |
| `withdraw` | `amount` | Withdraw available balance | Public |
| `lockFunds` | `user`, `campaignId`, `encryptedAmount` | Lock funds for campaign | Campaign contract |
| `transferLockedFunds` | `recipient`, `campaignId` | Transfer locked funds | Campaign contract |
| `unlockFunds` | `campaignId` | Unlock funds (refund) | Campaign contract |
| `requestAvailableBalanceDecryption` | - | Mark balance as decryptable | User |
| `submitAvailableBalanceDecryption` | `cleartext`, `proof` | Submit balance decryption proof | User |
| `getPendingAvailableBalanceHandle` | - | Get pending decryption handle | Public (read) |
| `getEncryptedBalance` | `user` | Get encrypted balance | Public (read) |
| `getEncryptedBalanceAndLocked` | `user` | Get balance + total locked | Public (read) |
| `getEncryptedTotalLocked` | `user` | Get total locked amount | Public (read) |

**Events**:
- `Deposited(address user, uint256 amount)`
- `Withdrawn(address user, uint256 amount)`
- `FundsLocked(address user, uint256 campaignId, uint256 amount)`
- `FundsTransferred(address recipient, uint256 campaignId, uint256 amount)`
- `FundsUnlocked(uint256 campaignId, address user, uint256 amount)`

**Storage**:
- `mapping(address => euint64) private balances` - Encrypted user balances
- `mapping(address => mapping(uint256 => euint64)) private lockedAmounts` - Per-campaign locks
- `mapping(address => uint256) private totalLocked` - Total locked per user

#### 3. CampaignToken.sol (ERC20)

**Address**: Deployed dynamically per campaign

**Purpose**: Campaign-specific reward tokens for successful campaigns

**Specifications**:
- **Standard**: ERC20
- **Max Supply**: 1,000,000,000 (1 billion tokens)
- **Decimals**: 18
- **Distribution**: Proportional to contribution amount
- **Formula**: `userTokens = (userContribution / campaignTarget) × MAX_SUPPLY`

**Key Functions**:
| Function | Parameters | Description | Access |
|----------|-----------|-------------|--------|
| `mint` | `to`, `amount` | Mint tokens to address | Owner only (ConfidentialFundraising) |
| `balanceOf` | `account` | Get token balance | Public (read) |
| `transfer` | `to`, `amount` | Transfer tokens | Token holder |

**Metadata**:
- Name and symbol set by campaign owner during finalization
- Immutable `campaignId` reference
- Cannot mint beyond MAX_SUPPLY

### Network Configuration

| Network | Chain ID | RPC URL | Block Explorer |
|---------|----------|---------|----------------|
| **Sepolia** | 11155111 | `https://sepolia.infura.io/v3/...` | https://sepolia.etherscan.io |
| **Localhost** | 31337 | `http://127.0.0.1:8545` | N/A |
| **Hardhat** | 31337 | In-memory | N/A |

### Compiler Configuration

```json
{
  "solidity": "0.8.24",
  "optimizer": {
    "enabled": true,
    "runs": 200,
    "viaIR": true
  },
  "evmVersion": "cancun"
}
```

**Note**: `viaIR: true` is required for FHEVM contracts to compile correctly.

### Security Features

- **Access Control**: Owner-only functions protected by modifiers
- **FHE Permissions**: Strict permission management via `FHE.allow()`
- **Reentrancy Protection**: NonReentrant modifiers on external calls
- **Input Validation**: Comprehensive checks on all parameters
- **State Machine**: Campaign lifecycle enforced by state checks
- **Locked Funds Isolation**: Per-campaign fund locks prevent double-spending
- **Cache Expiration**: 10-minute timeout on decrypted values
- **Max Supply Enforcement**: Token minting capped at 1 billion
- **Cryptographic Proofs**: FHE.checkSignatures validates all decryptions

---

## 🛠️ Development Tools

### Flatten Contracts for Remix IDE

If you need to deploy contracts using Remix IDE, use the flatten script:

```bash
# Run from project root
./scripts/flatten-contracts.sh
```

This creates flattened versions in the `flattened/` directory:
- `ConfidentialFundraising_flat.sol`
- `ShareVault_flat.sol`

**Note**: Remove duplicate SPDX license identifiers if Remix shows warnings.

### Configure ShareVault After Deployment

After deploying both contracts, you must configure the ShareVault to recognize the ConfidentialFundraising contract:

```bash
VAULT_ADDRESS=0x... CAMPAIGN_ADDRESS=0x... npx hardhat run scripts/configure-vault.ts --network sepolia
```

This prevents the `OnlyCampaignContract()` error when users try to contribute.

---

## 🔄 FHEVM v0.9 Migration

This project has been upgraded to **FHEVM v0.9** with self-relaying decryption. Key changes include:

### Smart Contract Changes

**Removed (Deprecated):**
- `FHE.requestDecryption()` - Oracle-based decryption
- `FHE.loadRequestedHandles()` - Handle loading for callbacks
- Oracle callback functions - Replaced with submit functions

**Added (Self-Relaying):**
- `FHE.makePubliclyDecryptable()` - Marks values for public decryption
- `FHE.checkSignatures()` - Verifies decryption proofs (updated signature)
- `request*Decryption()` - Mark values as decryptable
- `submit*Decryption()` - Submit cleartext + proof for verification

### Frontend Changes

**Package Updates:**
- `@fhevm/solidity`: ^0.8.0 → ^0.9.1
- `@zama-fhe/relayer-sdk`: ^0.2.0 → ^0.3.0-5
- Removed: `@zama-fhe/oracle-solidity` (deprecated)

**New Workflow:**
```typescript
// 1. Mark as decryptable
await requestMyContributionDecryption(campaignId);

// 2. Get encrypted handle
const handle = await getEncryptedContribution(campaignId, userAddress);

// 3. Decrypt with proof generation
const { cleartext, proof } = await instance.publicDecrypt([handle]);

// 4. Submit proof to contract
await submitMyContributionDecryption(campaignId, cleartext, proof);
```

**Benefits:**
- ⚡ **10-30x faster** - No waiting for gateway callbacks
- 🔐 **More secure** - User-controlled decryption with cryptographic proofs
- 💰 **Lower cost** - No oracle transaction fees

For detailed migration steps, see `MIGRATION_v0.9_INSTRUCTIONS.md` and `FRONTEND_INTEGRATION_GUIDE.md`.

---

## 📚 Additional Resources

- **FHEVM Documentation**: https://docs.zama.org/protocol
- **FHEVM v0.9 Migration Guide**: https://docs.zama.org/protocol/solidity-guides/development-guide/migration
- **Relayer SDK Guides**: https://docs.zama.org/protocol/relayer-sdk-guides
- **Hardhat Documentation**: https://hardhat.org/docs
- **Next.js Documentation**: https://nextjs.org/docs
- **Privy Documentation**: https://docs.privy.io
- **Viem Documentation**: https://viem.sh

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit changes: `git commit -m 'Add your feature'`
4. Push to branch: `git push origin feature/your-feature`
5. Open a pull request

---

## 📄 License

This project is licensed under the MIT License. See LICENSE file for details.

---

## 🔒 Privacy & Security Notice

This platform uses **FHEVM (Fully Homomorphic Encryption)** to ensure:
- Contribution amounts are **never** visible on-chain in plaintext
- Only authorized parties (contributors + campaign owner) can decrypt values
- Mathematical operations (summing contributions) work on encrypted data
- Zero-knowledge proofs validate encrypted values without revealing them

**Security Audits**: TBD

Built with ❤️ by [@cris_thedev](https://x.com/cris_thedev) using Zama's FHEVM technology
