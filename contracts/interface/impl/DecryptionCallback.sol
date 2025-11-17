// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@fhevm/solidity/lib/FHE.sol";
import {ZamaEthereumConfig} from "@fhevm/solidity/config/ZamaConfig.sol";
import "../IDecryptionCallbacks.sol";
import "../../core/EncryptedHelper.sol";
import "../../storage/FundraisingStorage.sol";
import "../../storage/ShareVaultStorage.sol";
import "../../struct/CommonStruct.sol";
import "../../struct/FundraisingStruct.sol";
import "../../struct/ShareVaultStruct.sol";

/**
 * @title DecryptionCallbacks
 * @notice DEPRECATED in v0.9 - These callback functions are NO LONGER FUNCTIONAL.
 * @dev The v0.9 migration uses submitMyContributionDecryption(), submitTotalRaisedDecryption(),
 * and submitAvailableBalanceDecryption() instead. These functions are kept to satisfy the interface
 * but will revert if called since FHE.requestDecryption() no longer exists in v0.9.
 */
contract DecryptionCallbacks is IDecryptionCallbacks, FundraisingStorage, ShareVaultStorage {

    /// @dev DEPRECATED - Non-functional in v0.9. Use submitMyContributionDecryption() instead
    function callbackDecryptMyContribution(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external override {
        revert("DEPRECATED: Use submitMyContributionDecryption");
        // FHE.checkSignatures signature changed in v0.9 - old requestId pattern no longer supported

    }

    /// @dev DEPRECATED - Non-functional in v0.9. Use submitTotalRaisedDecryption() instead
    function callbackDecryptTotalRaised(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external override {
        revert("DEPRECATED: Use submitTotalRaisedDecryption");

    }

    /// @dev DEPRECATED - Non-functional in v0.9. Use submitAvailableBalanceDecryption() instead
    function callbackDecryptAvailableBalance(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external override {
        revert("DEPRECATED: Use submitAvailableBalanceDecryption");

    }
}