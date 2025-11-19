#!/bin/bash

# Script to flatten Solidity contracts for deployment on Remix IDE
# Creates flattened versions with all dependencies included

echo "🔨 Flattening contracts..."

# Create output directory
mkdir -p flattened

# Flatten ConfidentialFundraising
echo "📝 Flattening ConfidentialFundraising.sol..."
npx hardhat flatten contracts/ConfidentialFundraising.sol > flattened/ConfidentialFundraising_flat.sol

# Flatten ShareVault
echo "📝 Flattening ShareVault.sol..."
npx hardhat flatten contracts/ShareVault.sol > flattened/ShareVault_flat.sol

echo ""
echo "✅ Flattening complete!"
echo ""
echo "📁 Flattened contracts saved to: ./flattened/"
echo ""
echo "Files created:"
echo "  - flattened/ConfidentialFundraising_flat.sol"
echo "  - flattened/ShareVault_flat.sol"
echo ""
echo "💡 You can now copy these files to Remix IDE for deployment"
echo "   Note: Remove duplicate SPDX license identifiers if Remix shows warnings"
