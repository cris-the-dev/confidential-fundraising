// Sources flattened with hardhat v2.26.3 https://hardhat.org

// SPDX-License-Identifier: BSD-3-Clause-Clear AND MIT

// File @fhevm/solidity/lib/FheType.sol@v0.9.1

// Original license: SPDX_License_Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.24;

enum FheType {
    Bool,
    Uint4,
    Uint8,
    Uint16,
    Uint32,
    Uint64,
    Uint128,
    Uint160,
    Uint256,
    Uint512,
    Uint1024,
    Uint2048,
    Uint2,
    Uint6,
    Uint10,
    Uint12,
    Uint14,
    Int2,
    Int4,
    Int6,
    Int8,
    Int10,
    Int12,
    Int14,
    Int16,
    Int32,
    Int64,
    Int128,
    Int160,
    Int256,
    AsciiString,
    Int512,
    Int1024,
    Int2048,
    Uint24,
    Uint40,
    Uint48,
    Uint56,
    Uint72,
    Uint80,
    Uint88,
    Uint96,
    Uint104,
    Uint112,
    Uint120,
    Uint136,
    Uint144,
    Uint152,
    Uint168,
    Uint176,
    Uint184,
    Uint192,
    Uint200,
    Uint208,
    Uint216,
    Uint224,
    Uint232,
    Uint240,
    Uint248,
    Int24,
    Int40,
    Int48,
    Int56,
    Int72,
    Int80,
    Int88,
    Int96,
    Int104,
    Int112,
    Int120,
    Int136,
    Int144,
    Int152,
    Int168,
    Int176,
    Int184,
    Int192,
    Int200,
    Int208,
    Int216,
    Int224,
    Int232,
    Int240,
    Int248
}


// File @fhevm/solidity/lib/Impl.sol@v0.9.1

// Original license: SPDX_License_Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.24;

/**
 * @title   CoprocessorConfig
 * @notice  This struct contains all addresses of core contracts, which are needed in a typical dApp.
 */
struct CoprocessorConfig {
    address ACLAddress;
    address CoprocessorAddress;
    address KMSVerifierAddress;
}

/**
 * @title   IFHEVMExecutor
 * @notice  This interface contains all functions to conduct FHE operations.
 */
interface IFHEVMExecutor {
    /**
     * @notice              Computes fheAdd operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheAdd(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheSub operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheSub(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheMul operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheMul(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheDiv operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheDiv(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheRem operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheRem(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheBitAnd operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheBitAnd(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheBitOr operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheBitOr(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheBitXor operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheBitXor(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheShl operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheShl(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheShr operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheShr(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheRotl operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheRotl(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheRotr operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheRotr(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheEq operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheEq(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheNe operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheNe(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheGe operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheGe(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheGt operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheGt(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheLe operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheLe(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheLt operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheLt(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheMin operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheMin(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheMax operation.
     * @param lhs           LHS.
     * @param rhs           RHS.
     * @param scalarByte    Scalar byte.
     * @return result       Result.
     */
    function fheMax(bytes32 lhs, bytes32 rhs, bytes1 scalarByte) external returns (bytes32 result);

    /**
     * @notice              Computes fheNeg operation.
     * @param ct            Ct
     * @return result       Result.
     */
    function fheNeg(bytes32 ct) external returns (bytes32 result);

    /**
     * @notice              Computes fheNot operation.
     * @param ct            Ct
     * @return result       Result.
     */
    function fheNot(bytes32 ct) external returns (bytes32 result);

    /**
     * @notice                Verifies the ciphertext.
     * @param inputHandle     Input handle.
     * @param callerAddress   Address of the caller.
     * @param inputProof      Input proof.
     * @param inputType       Input type.
     * @return result         Result.
     */
    function verifyInput(
        bytes32 inputHandle,
        address callerAddress,
        bytes memory inputProof,
        FheType inputType
    ) external returns (bytes32 result);

    /**
     * @notice          Performs the casting to a target type.
     * @param ct        Value to cast.
     * @param toType    Target type.
     * @return result   Result value of the target type.
     */
    function cast(bytes32 ct, FheType toType) external returns (bytes32 result);

    /**
     * @notice          Does trivial encryption.
     * @param ct        Value to encrypt.
     * @param toType    Target type.
     * @return result   Result value of the target type.
     */
    function trivialEncrypt(uint256 ct, FheType toType) external returns (bytes32 result);

    /**
     * @notice              Computes FHEIfThenElse operation.
     * @param control       Control value.
     * @param ifTrue        If true.
     * @param ifFalse       If false.
     * @return result       Result.
     */
    function fheIfThenElse(bytes32 control, bytes32 ifTrue, bytes32 ifFalse) external returns (bytes32 result);

    /**
     * @notice              Computes FHERand operation.
     * @param randType      Type for the random result.
     * @return result       Result.
     */
    function fheRand(FheType randType) external returns (bytes32 result);

    /**
     * @notice              Computes FHERandBounded operation.
     * @param upperBound    Upper bound value.
     * @param randType      Type for the random result.
     * @return result       Result.
     */
    function fheRandBounded(uint256 upperBound, FheType randType) external returns (bytes32 result);

    /**
     * @notice                      Returns the address of the InputVerifier contract used by the coprocessor.
     * @return inputVerifierAddress Address of the InputVerifier.
     */
    function getInputVerifierAddress() external view returns (address);
}

/**
 * @title   IACL.
 * @notice  This interface contains all functions that are used to conduct operations
 *          with the ACL contract.
 */
interface IACL {
    /**
     * @notice              Allows the use of handle by address account for this transaction.
     * @dev                 The caller must be allowed to use handle for allowTransient() to succeed.
     *                      If not, allowTransient() reverts.
     *                      The Coprocessor contract can always allowTransient(), contrarily to allow().
     * @param ciphertext    Ciphertext.
     * @param account       Address of the account.
     */
    function allowTransient(bytes32 ciphertext, address account) external;

    /**
     * @notice              Allows the use of handle for the address account.
     * @dev                 The caller must be allowed to use handle for allow() to succeed. If not, allow() reverts.
     * @param handle        Handle.
     * @param account       Address of the account.
     */
    function allow(bytes32 handle, address account) external;

    /**
     * @dev This function removes the transient allowances, which could be useful for integration with
     *      Account Abstraction when bundling several UserOps calling the FHEVMExecutor Coprocessor.
     */
    function cleanTransientStorage() external;

    /**
     * @notice              Returns whether the account is allowed to use the handle, either due to
     *                      allowTransient() or allow().
     * @param handle        Handle.
     * @param account       Address of the account.
     * @return isAllowed    Whether the account can access the handle.
     */
    function isAllowed(bytes32 handle, address account) external view returns (bool);

    /**
     * @notice              Allows a list of handles to be decrypted.
     * @param handlesList   List of handles.
     */
    function allowForDecryption(bytes32[] memory handlesList) external;

    /**
     * @notice                  Returns wether a handle is allowed to be publicly decrypted.
     * @param handle            Handle.
     * @return isDecryptable    Whether the handle can be publicly decrypted.
     */
    function isAllowedForDecryption(bytes32 handle) external view returns (bool);
}

/**
 * @title IInputVerifier
 * @notice This interface contains the only function required from InputVerifier.
 */
interface IInputVerifier {
    /**
     * @dev This function removes the transient allowances, which could be useful for integration with
     *      Account Abstraction when bundling several UserOps calling the FHEVMExecutor Coprocessor.
     */
    function cleanTransientStorage() external;
}

/**
 * @title   Impl
 * @notice  This library is the core implementation for computing FHE operations (e.g. add, sub, xor).
 */
library Impl {
    /// keccak256(abi.encode(uint256(keccak256("confidential.storage.config")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant CoprocessorConfigLocation =
        0x9e7b61f58c47dc699ac88507c4f5bb9f121c03808c5676a8078fe583e4649700;

    /**
     * @dev Returns the Coprocessor config.
     */
    function getCoprocessorConfig() internal pure returns (CoprocessorConfig storage $) {
        assembly {
            $.slot := CoprocessorConfigLocation
        }
    }

    /**
     * @notice                  Sets the coprocessor addresses.
     * @param coprocessorConfig Coprocessor config struct that contains contract addresses.
     */
    function setCoprocessor(CoprocessorConfig memory coprocessorConfig) internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        $.ACLAddress = coprocessorConfig.ACLAddress;
        $.CoprocessorAddress = coprocessorConfig.CoprocessorAddress;
        $.KMSVerifierAddress = coprocessorConfig.KMSVerifierAddress;
    }

    function add(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheAdd(lhs, rhs, scalarByte);
    }

    function sub(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheSub(lhs, rhs, scalarByte);
    }

    function mul(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheMul(lhs, rhs, scalarByte);
    }

    function div(bytes32 lhs, bytes32 rhs) internal returns (bytes32 result) {
        bytes1 scalarByte = 0x01;
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheDiv(lhs, rhs, scalarByte);
    }

    function rem(bytes32 lhs, bytes32 rhs) internal returns (bytes32 result) {
        bytes1 scalarByte = 0x01;
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheRem(lhs, rhs, scalarByte);
    }

    function and(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheBitAnd(lhs, rhs, scalarByte);
    }

    function or(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheBitOr(lhs, rhs, scalarByte);
    }

    function xor(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheBitXor(lhs, rhs, scalarByte);
    }

    function shl(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheShl(lhs, rhs, scalarByte);
    }

    function shr(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheShr(lhs, rhs, scalarByte);
    }

    function rotl(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheRotl(lhs, rhs, scalarByte);
    }

    function rotr(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheRotr(lhs, rhs, scalarByte);
    }

    function eq(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheEq(lhs, rhs, scalarByte);
    }

    function ne(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheNe(lhs, rhs, scalarByte);
    }

    function ge(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheGe(lhs, rhs, scalarByte);
    }

    function gt(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheGt(lhs, rhs, scalarByte);
    }

    function le(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheLe(lhs, rhs, scalarByte);
    }

    function lt(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheLt(lhs, rhs, scalarByte);
    }

    function min(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheMin(lhs, rhs, scalarByte);
    }

    function max(bytes32 lhs, bytes32 rhs, bool scalar) internal returns (bytes32 result) {
        bytes1 scalarByte;
        if (scalar) {
            scalarByte = 0x01;
        } else {
            scalarByte = 0x00;
        }
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheMax(lhs, rhs, scalarByte);
    }

    function neg(bytes32 ct) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheNeg(ct);
    }

    function not(bytes32 ct) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheNot(ct);
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(bytes32 control, bytes32 ifTrue, bytes32 ifFalse) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheIfThenElse(control, ifTrue, ifFalse);
    }

    /**
     * @notice              Verifies the ciphertext (FHEVMExecutor) and allows transient (ACL).
     * @param inputHandle   Input handle.
     * @param inputProof    Input proof.
     * @param toType        Input type.
     * @return result       Result.
     */
    function verify(bytes32 inputHandle, bytes memory inputProof, FheType toType) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).verifyInput(inputHandle, msg.sender, inputProof, toType);
        IACL($.ACLAddress).allowTransient(result, msg.sender);
    }

    /**
     * @notice            Performs the casting to a target type.
     * @param ciphertext  Ciphertext to cast.
     * @param toType      Target type.
     * @return result     Result value of the target type.
     */
    function cast(bytes32 ciphertext, FheType toType) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).cast(ciphertext, toType);
    }

    /**
     * @notice          Does trivial encryption.
     * @param value     Value to encrypt.
     * @param toType    Target type.
     * @return result   Result value of the target type.
     */
    function trivialEncrypt(uint256 value, FheType toType) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).trivialEncrypt(value, toType);
    }

    function rand(FheType randType) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheRand(randType);
    }

    function randBounded(uint256 upperBound, FheType randType) internal returns (bytes32 result) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        result = IFHEVMExecutor($.CoprocessorAddress).fheRandBounded(upperBound, randType);
    }

    /**
     * @notice              Allows the use of handle by address account for this transaction.
     * @dev                 The caller must be allowed to use handle for allowTransient() to succeed.
     *                      If not, allowTransient() reverts.
     *                      The Coprocessor contract can always allowTransient(), contrarily to allow().
     * @param handle        Handle.
     * @param account       Address of the account.
     */
    function allowTransient(bytes32 handle, address account) internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        IACL($.ACLAddress).allowTransient(handle, account);
    }

    /**
     * @notice              Allows the use of handle for the address account.
     * @dev                 The caller must be allowed to use handle for allow() to succeed. If not, allow() reverts.
     * @param handle        Handle.
     * @param account       Address of the account.
     */
    function allow(bytes32 handle, address account) internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        IACL($.ACLAddress).allow(handle, account);
    }

    /**
     * @notice              Allows the handle to be publicly decryptable.
     * @dev                 The caller must be allowed to use handle for makePubliclyDecryptable() to succeed.
     *                      If not, makePubliclyDecryptable() reverts.
     * @param handle        Handle.
     */
    function makePubliclyDecryptable(bytes32 handle) internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        bytes32[] memory handleArray = new bytes32[](1);
        handleArray[0] = handle;
        IACL($.ACLAddress).allowForDecryption(handleArray);
    }

    /**
     * @dev This function removes the transient allowances in the ACL, which could be useful for integration
     *      with Account Abstraction when bundling several UserOps calling the FHEVMExecutor Coprocessor.
     */
    function cleanTransientStorageACL() internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        IACL($.ACLAddress).cleanTransientStorage();
    }

    /**
     * @dev This function removes the transient proofs in the InputVerifier, which could be useful for integration
     *      with Account Abstraction when bundling several UserOps calling the FHEVMExecutor Coprocessor.
     */
    function cleanTransientStorageInputVerifier() internal {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        address inputVerifierAddress = IFHEVMExecutor($.CoprocessorAddress).getInputVerifierAddress();
        IInputVerifier(inputVerifierAddress).cleanTransientStorage();
    }

    /**
     * @notice              Returns whether the account is allowed to use the handle, either due to
     *                      allowTransient() or allow().
     * @param handle        Handle.
     * @param account       Address of the account.
     * @return isAllowed    Whether the account can access the handle.
     */
    function isAllowed(bytes32 handle, address account) internal view returns (bool) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        return IACL($.ACLAddress).isAllowed(handle, account);
    }

    /**
     * @notice              Returns whether the handle is allowed to be publicly decrypted.
     * @param handle        Handle.
     * @return isAllowed    Whether the handle can be publicly decrypted.
     */
    function isPubliclyDecryptable(bytes32 handle) internal view returns (bool) {
        CoprocessorConfig storage $ = getCoprocessorConfig();
        return IACL($.ACLAddress).isAllowedForDecryption(handle);
    }
}


// File encrypted-types/EncryptedTypes.sol@v0.0.4

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

type ebool is bytes32;

type euint8 is bytes32;
type euint16 is bytes32;
type euint24 is bytes32;
type euint32 is bytes32;
type euint40 is bytes32;
type euint48 is bytes32;
type euint56 is bytes32;
type euint64 is bytes32;
type euint72 is bytes32;
type euint80 is bytes32;
type euint88 is bytes32;
type euint96 is bytes32;
type euint104 is bytes32;
type euint112 is bytes32;
type euint120 is bytes32;
type euint128 is bytes32;
type euint136 is bytes32;
type euint144 is bytes32;
type euint152 is bytes32;
type euint160 is bytes32;
type euint168 is bytes32;
type euint176 is bytes32;
type euint184 is bytes32;
type euint192 is bytes32;
type euint200 is bytes32;
type euint208 is bytes32;
type euint216 is bytes32;
type euint224 is bytes32;
type euint232 is bytes32;
type euint240 is bytes32;
type euint248 is bytes32;
type euint256 is bytes32;

type eint8 is bytes32;
type eint16 is bytes32;
type eint24 is bytes32;
type eint32 is bytes32;
type eint40 is bytes32;
type eint48 is bytes32;
type eint56 is bytes32;
type eint64 is bytes32;
type eint72 is bytes32;
type eint80 is bytes32;
type eint88 is bytes32;
type eint96 is bytes32;
type eint104 is bytes32;
type eint112 is bytes32;
type eint120 is bytes32;
type eint128 is bytes32;
type eint136 is bytes32;
type eint144 is bytes32;
type eint152 is bytes32;
type eint160 is bytes32;
type eint168 is bytes32;
type eint176 is bytes32;
type eint184 is bytes32;
type eint192 is bytes32;
type eint200 is bytes32;
type eint208 is bytes32;
type eint216 is bytes32;
type eint224 is bytes32;
type eint232 is bytes32;
type eint240 is bytes32;
type eint248 is bytes32;
type eint256 is bytes32;

type eaddress is bytes32;

type ebytes1 is bytes32;
type ebytes2 is bytes32;
type ebytes3 is bytes32;
type ebytes4 is bytes32;
type ebytes5 is bytes32;
type ebytes6 is bytes32;
type ebytes7 is bytes32;
type ebytes8 is bytes32;
type ebytes9 is bytes32;
type ebytes10 is bytes32;
type ebytes11 is bytes32;
type ebytes12 is bytes32;
type ebytes13 is bytes32;
type ebytes14 is bytes32;
type ebytes15 is bytes32;
type ebytes16 is bytes32;
type ebytes17 is bytes32;
type ebytes18 is bytes32;
type ebytes19 is bytes32;
type ebytes20 is bytes32;
type ebytes21 is bytes32;
type ebytes22 is bytes32;
type ebytes23 is bytes32;
type ebytes24 is bytes32;
type ebytes25 is bytes32;
type ebytes26 is bytes32;
type ebytes27 is bytes32;
type ebytes28 is bytes32;
type ebytes29 is bytes32;
type ebytes30 is bytes32;
type ebytes31 is bytes32;
type ebytes32 is bytes32;

type externalEbool is bytes32;

type externalEuint8 is bytes32;
type externalEuint16 is bytes32;
type externalEuint24 is bytes32;
type externalEuint32 is bytes32;
type externalEuint40 is bytes32;
type externalEuint48 is bytes32;
type externalEuint56 is bytes32;
type externalEuint64 is bytes32;
type externalEuint72 is bytes32;
type externalEuint80 is bytes32;
type externalEuint88 is bytes32;
type externalEuint96 is bytes32;
type externalEuint104 is bytes32;
type externalEuint112 is bytes32;
type externalEuint120 is bytes32;
type externalEuint128 is bytes32;
type externalEuint136 is bytes32;
type externalEuint144 is bytes32;
type externalEuint152 is bytes32;
type externalEuint160 is bytes32;
type externalEuint168 is bytes32;
type externalEuint176 is bytes32;
type externalEuint184 is bytes32;
type externalEuint192 is bytes32;
type externalEuint200 is bytes32;
type externalEuint208 is bytes32;
type externalEuint216 is bytes32;
type externalEuint224 is bytes32;
type externalEuint232 is bytes32;
type externalEuint240 is bytes32;
type externalEuint248 is bytes32;
type externalEuint256 is bytes32;

type externalEint8 is bytes32;
type externalEint16 is bytes32;
type externalEint24 is bytes32;
type externalEint32 is bytes32;
type externalEint40 is bytes32;
type externalEint48 is bytes32;
type externalEint56 is bytes32;
type externalEint64 is bytes32;
type externalEint72 is bytes32;
type externalEint80 is bytes32;
type externalEint88 is bytes32;
type externalEint96 is bytes32;
type externalEint104 is bytes32;
type externalEint112 is bytes32;
type externalEint120 is bytes32;
type externalEint128 is bytes32;
type externalEint136 is bytes32;
type externalEint144 is bytes32;
type externalEint152 is bytes32;
type externalEint160 is bytes32;
type externalEint168 is bytes32;
type externalEint176 is bytes32;
type externalEint184 is bytes32;
type externalEint192 is bytes32;
type externalEint200 is bytes32;
type externalEint208 is bytes32;
type externalEint216 is bytes32;
type externalEint224 is bytes32;
type externalEint232 is bytes32;
type externalEint240 is bytes32;
type externalEint248 is bytes32;
type externalEint256 is bytes32;

type externalEaddress is bytes32;

type externalEbytes1 is bytes32;
type externalEbytes2 is bytes32;
type externalEbytes3 is bytes32;
type externalEbytes4 is bytes32;
type externalEbytes5 is bytes32;
type externalEbytes6 is bytes32;
type externalEbytes7 is bytes32;
type externalEbytes8 is bytes32;
type externalEbytes9 is bytes32;
type externalEbytes10 is bytes32;
type externalEbytes11 is bytes32;
type externalEbytes12 is bytes32;
type externalEbytes13 is bytes32;
type externalEbytes14 is bytes32;
type externalEbytes15 is bytes32;
type externalEbytes16 is bytes32;
type externalEbytes17 is bytes32;
type externalEbytes18 is bytes32;
type externalEbytes19 is bytes32;
type externalEbytes20 is bytes32;
type externalEbytes21 is bytes32;
type externalEbytes22 is bytes32;
type externalEbytes23 is bytes32;
type externalEbytes24 is bytes32;
type externalEbytes25 is bytes32;
type externalEbytes26 is bytes32;
type externalEbytes27 is bytes32;
type externalEbytes28 is bytes32;
type externalEbytes29 is bytes32;
type externalEbytes30 is bytes32;
type externalEbytes31 is bytes32;
type externalEbytes32 is bytes32;


// File @fhevm/solidity/lib/FHE.sol@v0.9.1

// Original license: SPDX_License_Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.24;


/**
 * @title IKMSVerifier
 * @notice This interface contains the only function required from KMSVerifier.
 */
interface IKMSVerifier {
    function verifyDecryptionEIP712KMSSignatures(
        bytes32[] memory handlesList,
        bytes memory decryptedResult,
        bytes memory decryptionProof
    ) external returns (bool);
}

/**
 * @title   FHE
 * @notice  This library is the interaction point for all smart contract developers
 *          that interact with the FHEVM protocol.
 */
library FHE {
    /// @notice Returned if the returned KMS signatures are not valid.
    error InvalidKMSSignatures();

    /// @notice This event is emitted when public decryption has been successfully verified.
    event PublicDecryptionVerified(bytes32[] handlesList, bytes abiEncodedCleartexts);

    /**
     * @notice                  Sets the coprocessor addresses.
     * @param coprocessorConfig Coprocessor config struct that contains contract addresses.
     */
    function setCoprocessor(CoprocessorConfig memory coprocessorConfig) internal {
        Impl.setCoprocessor(coprocessorConfig);
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(ebool v) internal pure returns (bool) {
        return ebool.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint8 v) internal pure returns (bool) {
        return euint8.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint16 v) internal pure returns (bool) {
        return euint16.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint32 v) internal pure returns (bool) {
        return euint32.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint64 v) internal pure returns (bool) {
        return euint64.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint128 v) internal pure returns (bool) {
        return euint128.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(eaddress v) internal pure returns (bool) {
        return eaddress.unwrap(v) != 0;
    }

    /**
     * @dev Returns true if the encrypted integer is initialized and false otherwise.
     */
    function isInitialized(euint256 v) internal pure returns (bool) {
        return euint256.unwrap(v) != 0;
    }

    /**
     * @dev Evaluates and(ebool a, ebool b) and returns the result.
     */
    function and(ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.and(ebool.unwrap(a), ebool.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(ebool a, ebool b) and returns the result.
     */
    function or(ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.or(ebool.unwrap(a), ebool.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(ebool a, ebool b) and returns the result.
     */
    function xor(ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.xor(ebool.unwrap(a), ebool.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(ebool a, ebool b) and returns the result.
     */
    function eq(ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.eq(ebool.unwrap(a), ebool.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(ebool a, ebool b) and returns the result.
     */
    function ne(ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.ne(ebool.unwrap(a), ebool.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint8 a, euint8 b)  and returns the result.
     */
    function add(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint8 a, euint8 b)  and returns the result.
     */
    function sub(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, euint8 b)  and returns the result.
     */
    function mul(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint8 b)  and returns the result.
     */
    function and(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.and(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint8 b)  and returns the result.
     */
    function or(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.or(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint8 b)  and returns the result.
     */
    function xor(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.xor(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint8 b)  and returns the result.
     */
    function eq(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint8 b)  and returns the result.
     */
    function ne(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint8 a, euint8 b)  and returns the result.
     */
    function ge(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint8 a, euint8 b)  and returns the result.
     */
    function gt(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint8 a, euint8 b)  and returns the result.
     */
    function le(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint8 a, euint8 b)  and returns the result.
     */
    function lt(euint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint8 a, euint8 b)  and returns the result.
     */
    function min(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint8 a, euint8 b)  and returns the result.
     */
    function max(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint8 a, euint16 b)  and returns the result.
     */
    function add(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint8 a, euint16 b)  and returns the result.
     */
    function sub(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, euint16 b)  and returns the result.
     */
    function mul(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint16 b)  and returns the result.
     */
    function and(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint16 b)  and returns the result.
     */
    function or(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint16 b)  and returns the result.
     */
    function xor(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint16 b)  and returns the result.
     */
    function eq(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint16 b)  and returns the result.
     */
    function ne(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint8 a, euint16 b)  and returns the result.
     */
    function ge(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint8 a, euint16 b)  and returns the result.
     */
    function gt(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint8 a, euint16 b)  and returns the result.
     */
    function le(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint8 a, euint16 b)  and returns the result.
     */
    function lt(euint8 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint8 a, euint16 b)  and returns the result.
     */
    function min(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint8 a, euint16 b)  and returns the result.
     */
    function max(euint8 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint8 a, euint32 b)  and returns the result.
     */
    function add(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint8 a, euint32 b)  and returns the result.
     */
    function sub(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, euint32 b)  and returns the result.
     */
    function mul(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint32 b)  and returns the result.
     */
    function and(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint32 b)  and returns the result.
     */
    function or(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint32 b)  and returns the result.
     */
    function xor(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint32 b)  and returns the result.
     */
    function eq(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint32 b)  and returns the result.
     */
    function ne(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint8 a, euint32 b)  and returns the result.
     */
    function ge(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint8 a, euint32 b)  and returns the result.
     */
    function gt(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint8 a, euint32 b)  and returns the result.
     */
    function le(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint8 a, euint32 b)  and returns the result.
     */
    function lt(euint8 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint8 a, euint32 b)  and returns the result.
     */
    function min(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint8 a, euint32 b)  and returns the result.
     */
    function max(euint8 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint8 a, euint64 b)  and returns the result.
     */
    function add(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint8 a, euint64 b)  and returns the result.
     */
    function sub(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, euint64 b)  and returns the result.
     */
    function mul(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint64 b)  and returns the result.
     */
    function and(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint64 b)  and returns the result.
     */
    function or(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint64 b)  and returns the result.
     */
    function xor(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint64 b)  and returns the result.
     */
    function eq(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint64 b)  and returns the result.
     */
    function ne(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint8 a, euint64 b)  and returns the result.
     */
    function ge(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint8 a, euint64 b)  and returns the result.
     */
    function gt(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint8 a, euint64 b)  and returns the result.
     */
    function le(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint8 a, euint64 b)  and returns the result.
     */
    function lt(euint8 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint8 a, euint64 b)  and returns the result.
     */
    function min(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint8 a, euint64 b)  and returns the result.
     */
    function max(euint8 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint8 a, euint128 b)  and returns the result.
     */
    function add(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint8 a, euint128 b)  and returns the result.
     */
    function sub(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, euint128 b)  and returns the result.
     */
    function mul(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint128 b)  and returns the result.
     */
    function and(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint128 b)  and returns the result.
     */
    function or(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint128 b)  and returns the result.
     */
    function xor(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint128 b)  and returns the result.
     */
    function eq(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint128 b)  and returns the result.
     */
    function ne(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint8 a, euint128 b)  and returns the result.
     */
    function ge(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint8 a, euint128 b)  and returns the result.
     */
    function gt(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint8 a, euint128 b)  and returns the result.
     */
    function le(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint8 a, euint128 b)  and returns the result.
     */
    function lt(euint8 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint8 a, euint128 b)  and returns the result.
     */
    function min(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint8 a, euint128 b)  and returns the result.
     */
    function max(euint8 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint8 a, euint256 b)  and returns the result.
     */
    function and(euint8 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint8 a, euint256 b)  and returns the result.
     */
    function or(euint8 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint8 a, euint256 b)  and returns the result.
     */
    function xor(euint8 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint8 a, euint256 b)  and returns the result.
     */
    function eq(euint8 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint8 a, euint256 b)  and returns the result.
     */
    function ne(euint8 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint16 a, euint8 b)  and returns the result.
     */
    function add(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates sub(euint16 a, euint8 b)  and returns the result.
     */
    function sub(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, euint8 b)  and returns the result.
     */
    function mul(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint8 b)  and returns the result.
     */
    function and(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint8 b)  and returns the result.
     */
    function or(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint8 b)  and returns the result.
     */
    function xor(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint8 b)  and returns the result.
     */
    function eq(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint8 b)  and returns the result.
     */
    function ne(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates ge(euint16 a, euint8 b)  and returns the result.
     */
    function ge(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates gt(euint16 a, euint8 b)  and returns the result.
     */
    function gt(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates le(euint16 a, euint8 b)  and returns the result.
     */
    function le(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates lt(euint16 a, euint8 b)  and returns the result.
     */
    function lt(euint16 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates min(euint16 a, euint8 b)  and returns the result.
     */
    function min(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates max(euint16 a, euint8 b)  and returns the result.
     */
    function max(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates add(euint16 a, euint16 b)  and returns the result.
     */
    function add(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint16 a, euint16 b)  and returns the result.
     */
    function sub(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, euint16 b)  and returns the result.
     */
    function mul(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint16 b)  and returns the result.
     */
    function and(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint16 b)  and returns the result.
     */
    function or(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint16 b)  and returns the result.
     */
    function xor(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint16 b)  and returns the result.
     */
    function eq(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint16 b)  and returns the result.
     */
    function ne(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint16 a, euint16 b)  and returns the result.
     */
    function ge(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint16 a, euint16 b)  and returns the result.
     */
    function gt(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint16 a, euint16 b)  and returns the result.
     */
    function le(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint16 a, euint16 b)  and returns the result.
     */
    function lt(euint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint16 a, euint16 b)  and returns the result.
     */
    function min(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint16 a, euint16 b)  and returns the result.
     */
    function max(euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint16 a, euint32 b)  and returns the result.
     */
    function add(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint16 a, euint32 b)  and returns the result.
     */
    function sub(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, euint32 b)  and returns the result.
     */
    function mul(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint32 b)  and returns the result.
     */
    function and(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint32 b)  and returns the result.
     */
    function or(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint32 b)  and returns the result.
     */
    function xor(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint32 b)  and returns the result.
     */
    function eq(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint32 b)  and returns the result.
     */
    function ne(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint16 a, euint32 b)  and returns the result.
     */
    function ge(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint16 a, euint32 b)  and returns the result.
     */
    function gt(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint16 a, euint32 b)  and returns the result.
     */
    function le(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint16 a, euint32 b)  and returns the result.
     */
    function lt(euint16 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint16 a, euint32 b)  and returns the result.
     */
    function min(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint16 a, euint32 b)  and returns the result.
     */
    function max(euint16 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint16 a, euint64 b)  and returns the result.
     */
    function add(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint16 a, euint64 b)  and returns the result.
     */
    function sub(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, euint64 b)  and returns the result.
     */
    function mul(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint64 b)  and returns the result.
     */
    function and(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint64 b)  and returns the result.
     */
    function or(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint64 b)  and returns the result.
     */
    function xor(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint64 b)  and returns the result.
     */
    function eq(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint64 b)  and returns the result.
     */
    function ne(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint16 a, euint64 b)  and returns the result.
     */
    function ge(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint16 a, euint64 b)  and returns the result.
     */
    function gt(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint16 a, euint64 b)  and returns the result.
     */
    function le(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint16 a, euint64 b)  and returns the result.
     */
    function lt(euint16 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint16 a, euint64 b)  and returns the result.
     */
    function min(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint16 a, euint64 b)  and returns the result.
     */
    function max(euint16 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint16 a, euint128 b)  and returns the result.
     */
    function add(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint16 a, euint128 b)  and returns the result.
     */
    function sub(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, euint128 b)  and returns the result.
     */
    function mul(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint128 b)  and returns the result.
     */
    function and(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint128 b)  and returns the result.
     */
    function or(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint128 b)  and returns the result.
     */
    function xor(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint128 b)  and returns the result.
     */
    function eq(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint128 b)  and returns the result.
     */
    function ne(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint16 a, euint128 b)  and returns the result.
     */
    function ge(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint16 a, euint128 b)  and returns the result.
     */
    function gt(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint16 a, euint128 b)  and returns the result.
     */
    function le(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint16 a, euint128 b)  and returns the result.
     */
    function lt(euint16 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint16 a, euint128 b)  and returns the result.
     */
    function min(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint16 a, euint128 b)  and returns the result.
     */
    function max(euint16 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint16 a, euint256 b)  and returns the result.
     */
    function and(euint16 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint16 a, euint256 b)  and returns the result.
     */
    function or(euint16 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint16 a, euint256 b)  and returns the result.
     */
    function xor(euint16 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint16 a, euint256 b)  and returns the result.
     */
    function eq(euint16 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint16 a, euint256 b)  and returns the result.
     */
    function ne(euint16 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint32 a, euint8 b)  and returns the result.
     */
    function add(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates sub(euint32 a, euint8 b)  and returns the result.
     */
    function sub(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, euint8 b)  and returns the result.
     */
    function mul(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint8 b)  and returns the result.
     */
    function and(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint8 b)  and returns the result.
     */
    function or(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint8 b)  and returns the result.
     */
    function xor(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint8 b)  and returns the result.
     */
    function eq(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint8 b)  and returns the result.
     */
    function ne(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates ge(euint32 a, euint8 b)  and returns the result.
     */
    function ge(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates gt(euint32 a, euint8 b)  and returns the result.
     */
    function gt(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates le(euint32 a, euint8 b)  and returns the result.
     */
    function le(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates lt(euint32 a, euint8 b)  and returns the result.
     */
    function lt(euint32 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates min(euint32 a, euint8 b)  and returns the result.
     */
    function min(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates max(euint32 a, euint8 b)  and returns the result.
     */
    function max(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates add(euint32 a, euint16 b)  and returns the result.
     */
    function add(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates sub(euint32 a, euint16 b)  and returns the result.
     */
    function sub(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, euint16 b)  and returns the result.
     */
    function mul(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint16 b)  and returns the result.
     */
    function and(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint16 b)  and returns the result.
     */
    function or(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint16 b)  and returns the result.
     */
    function xor(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint16 b)  and returns the result.
     */
    function eq(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint16 b)  and returns the result.
     */
    function ne(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates ge(euint32 a, euint16 b)  and returns the result.
     */
    function ge(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates gt(euint32 a, euint16 b)  and returns the result.
     */
    function gt(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates le(euint32 a, euint16 b)  and returns the result.
     */
    function le(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates lt(euint32 a, euint16 b)  and returns the result.
     */
    function lt(euint32 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates min(euint32 a, euint16 b)  and returns the result.
     */
    function min(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates max(euint32 a, euint16 b)  and returns the result.
     */
    function max(euint32 a, euint16 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates add(euint32 a, euint32 b)  and returns the result.
     */
    function add(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint32 a, euint32 b)  and returns the result.
     */
    function sub(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, euint32 b)  and returns the result.
     */
    function mul(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint32 b)  and returns the result.
     */
    function and(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint32 b)  and returns the result.
     */
    function or(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint32 b)  and returns the result.
     */
    function xor(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint32 b)  and returns the result.
     */
    function eq(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint32 b)  and returns the result.
     */
    function ne(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint32 a, euint32 b)  and returns the result.
     */
    function ge(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint32 a, euint32 b)  and returns the result.
     */
    function gt(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint32 a, euint32 b)  and returns the result.
     */
    function le(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint32 a, euint32 b)  and returns the result.
     */
    function lt(euint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint32 a, euint32 b)  and returns the result.
     */
    function min(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint32 a, euint32 b)  and returns the result.
     */
    function max(euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint32 a, euint64 b)  and returns the result.
     */
    function add(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint32 a, euint64 b)  and returns the result.
     */
    function sub(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, euint64 b)  and returns the result.
     */
    function mul(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint64 b)  and returns the result.
     */
    function and(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint64 b)  and returns the result.
     */
    function or(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint64 b)  and returns the result.
     */
    function xor(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint64 b)  and returns the result.
     */
    function eq(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint64 b)  and returns the result.
     */
    function ne(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint32 a, euint64 b)  and returns the result.
     */
    function ge(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint32 a, euint64 b)  and returns the result.
     */
    function gt(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint32 a, euint64 b)  and returns the result.
     */
    function le(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint32 a, euint64 b)  and returns the result.
     */
    function lt(euint32 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint32 a, euint64 b)  and returns the result.
     */
    function min(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint32 a, euint64 b)  and returns the result.
     */
    function max(euint32 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(asEuint64(a)), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint32 a, euint128 b)  and returns the result.
     */
    function add(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint32 a, euint128 b)  and returns the result.
     */
    function sub(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, euint128 b)  and returns the result.
     */
    function mul(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint128 b)  and returns the result.
     */
    function and(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint128 b)  and returns the result.
     */
    function or(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint128 b)  and returns the result.
     */
    function xor(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint128 b)  and returns the result.
     */
    function eq(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint128 b)  and returns the result.
     */
    function ne(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint32 a, euint128 b)  and returns the result.
     */
    function ge(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint32 a, euint128 b)  and returns the result.
     */
    function gt(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint32 a, euint128 b)  and returns the result.
     */
    function le(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint32 a, euint128 b)  and returns the result.
     */
    function lt(euint32 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint32 a, euint128 b)  and returns the result.
     */
    function min(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint32 a, euint128 b)  and returns the result.
     */
    function max(euint32 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint32 a, euint256 b)  and returns the result.
     */
    function and(euint32 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint32 a, euint256 b)  and returns the result.
     */
    function or(euint32 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint32 a, euint256 b)  and returns the result.
     */
    function xor(euint32 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint32 a, euint256 b)  and returns the result.
     */
    function eq(euint32 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint32 a, euint256 b)  and returns the result.
     */
    function ne(euint32 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint64 a, euint8 b)  and returns the result.
     */
    function add(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates sub(euint64 a, euint8 b)  and returns the result.
     */
    function sub(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, euint8 b)  and returns the result.
     */
    function mul(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint8 b)  and returns the result.
     */
    function and(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint8 b)  and returns the result.
     */
    function or(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint8 b)  and returns the result.
     */
    function xor(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint8 b)  and returns the result.
     */
    function eq(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint8 b)  and returns the result.
     */
    function ne(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ge(euint64 a, euint8 b)  and returns the result.
     */
    function ge(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates gt(euint64 a, euint8 b)  and returns the result.
     */
    function gt(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates le(euint64 a, euint8 b)  and returns the result.
     */
    function le(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates lt(euint64 a, euint8 b)  and returns the result.
     */
    function lt(euint64 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates min(euint64 a, euint8 b)  and returns the result.
     */
    function min(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates max(euint64 a, euint8 b)  and returns the result.
     */
    function max(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates add(euint64 a, euint16 b)  and returns the result.
     */
    function add(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates sub(euint64 a, euint16 b)  and returns the result.
     */
    function sub(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, euint16 b)  and returns the result.
     */
    function mul(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint16 b)  and returns the result.
     */
    function and(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint16 b)  and returns the result.
     */
    function or(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint16 b)  and returns the result.
     */
    function xor(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint16 b)  and returns the result.
     */
    function eq(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint16 b)  and returns the result.
     */
    function ne(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ge(euint64 a, euint16 b)  and returns the result.
     */
    function ge(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates gt(euint64 a, euint16 b)  and returns the result.
     */
    function gt(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates le(euint64 a, euint16 b)  and returns the result.
     */
    function le(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates lt(euint64 a, euint16 b)  and returns the result.
     */
    function lt(euint64 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates min(euint64 a, euint16 b)  and returns the result.
     */
    function min(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates max(euint64 a, euint16 b)  and returns the result.
     */
    function max(euint64 a, euint16 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates add(euint64 a, euint32 b)  and returns the result.
     */
    function add(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates sub(euint64 a, euint32 b)  and returns the result.
     */
    function sub(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, euint32 b)  and returns the result.
     */
    function mul(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint32 b)  and returns the result.
     */
    function and(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint32 b)  and returns the result.
     */
    function or(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint32 b)  and returns the result.
     */
    function xor(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint32 b)  and returns the result.
     */
    function eq(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint32 b)  and returns the result.
     */
    function ne(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates ge(euint64 a, euint32 b)  and returns the result.
     */
    function ge(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates gt(euint64 a, euint32 b)  and returns the result.
     */
    function gt(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates le(euint64 a, euint32 b)  and returns the result.
     */
    function le(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates lt(euint64 a, euint32 b)  and returns the result.
     */
    function lt(euint64 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates min(euint64 a, euint32 b)  and returns the result.
     */
    function min(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates max(euint64 a, euint32 b)  and returns the result.
     */
    function max(euint64 a, euint32 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates add(euint64 a, euint64 b)  and returns the result.
     */
    function add(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint64 a, euint64 b)  and returns the result.
     */
    function sub(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, euint64 b)  and returns the result.
     */
    function mul(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint64 b)  and returns the result.
     */
    function and(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint64 b)  and returns the result.
     */
    function or(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint64 b)  and returns the result.
     */
    function xor(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint64 b)  and returns the result.
     */
    function eq(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint64 b)  and returns the result.
     */
    function ne(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint64 a, euint64 b)  and returns the result.
     */
    function ge(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint64 a, euint64 b)  and returns the result.
     */
    function gt(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint64 a, euint64 b)  and returns the result.
     */
    function le(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint64 a, euint64 b)  and returns the result.
     */
    function lt(euint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint64 a, euint64 b)  and returns the result.
     */
    function min(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint64 a, euint64 b)  and returns the result.
     */
    function max(euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(a), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint64 a, euint128 b)  and returns the result.
     */
    function add(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint64 a, euint128 b)  and returns the result.
     */
    function sub(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, euint128 b)  and returns the result.
     */
    function mul(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint128 b)  and returns the result.
     */
    function and(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint128 b)  and returns the result.
     */
    function or(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint128 b)  and returns the result.
     */
    function xor(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint128 b)  and returns the result.
     */
    function eq(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint128 b)  and returns the result.
     */
    function ne(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint64 a, euint128 b)  and returns the result.
     */
    function ge(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint64 a, euint128 b)  and returns the result.
     */
    function gt(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint64 a, euint128 b)  and returns the result.
     */
    function le(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint64 a, euint128 b)  and returns the result.
     */
    function lt(euint64 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint64 a, euint128 b)  and returns the result.
     */
    function min(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint64 a, euint128 b)  and returns the result.
     */
    function max(euint64 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(asEuint128(a)), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint64 a, euint256 b)  and returns the result.
     */
    function and(euint64 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint64 a, euint256 b)  and returns the result.
     */
    function or(euint64 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint64 a, euint256 b)  and returns the result.
     */
    function xor(euint64 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint64 a, euint256 b)  and returns the result.
     */
    function eq(euint64 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint64 a, euint256 b)  and returns the result.
     */
    function ne(euint64 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates add(euint128 a, euint8 b)  and returns the result.
     */
    function add(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates sub(euint128 a, euint8 b)  and returns the result.
     */
    function sub(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, euint8 b)  and returns the result.
     */
    function mul(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint8 b)  and returns the result.
     */
    function and(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint8 b)  and returns the result.
     */
    function or(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint8 b)  and returns the result.
     */
    function xor(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint8 b)  and returns the result.
     */
    function eq(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint8 b)  and returns the result.
     */
    function ne(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ge(euint128 a, euint8 b)  and returns the result.
     */
    function ge(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates gt(euint128 a, euint8 b)  and returns the result.
     */
    function gt(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates le(euint128 a, euint8 b)  and returns the result.
     */
    function le(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates lt(euint128 a, euint8 b)  and returns the result.
     */
    function lt(euint128 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates min(euint128 a, euint8 b)  and returns the result.
     */
    function min(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates max(euint128 a, euint8 b)  and returns the result.
     */
    function max(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates add(euint128 a, euint16 b)  and returns the result.
     */
    function add(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates sub(euint128 a, euint16 b)  and returns the result.
     */
    function sub(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, euint16 b)  and returns the result.
     */
    function mul(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint16 b)  and returns the result.
     */
    function and(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint16 b)  and returns the result.
     */
    function or(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint16 b)  and returns the result.
     */
    function xor(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint16 b)  and returns the result.
     */
    function eq(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint16 b)  and returns the result.
     */
    function ne(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ge(euint128 a, euint16 b)  and returns the result.
     */
    function ge(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates gt(euint128 a, euint16 b)  and returns the result.
     */
    function gt(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates le(euint128 a, euint16 b)  and returns the result.
     */
    function le(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates lt(euint128 a, euint16 b)  and returns the result.
     */
    function lt(euint128 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates min(euint128 a, euint16 b)  and returns the result.
     */
    function min(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates max(euint128 a, euint16 b)  and returns the result.
     */
    function max(euint128 a, euint16 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates add(euint128 a, euint32 b)  and returns the result.
     */
    function add(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates sub(euint128 a, euint32 b)  and returns the result.
     */
    function sub(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, euint32 b)  and returns the result.
     */
    function mul(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint32 b)  and returns the result.
     */
    function and(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint32 b)  and returns the result.
     */
    function or(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint32 b)  and returns the result.
     */
    function xor(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint32 b)  and returns the result.
     */
    function eq(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint32 b)  and returns the result.
     */
    function ne(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ge(euint128 a, euint32 b)  and returns the result.
     */
    function ge(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates gt(euint128 a, euint32 b)  and returns the result.
     */
    function gt(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates le(euint128 a, euint32 b)  and returns the result.
     */
    function le(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates lt(euint128 a, euint32 b)  and returns the result.
     */
    function lt(euint128 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates min(euint128 a, euint32 b)  and returns the result.
     */
    function min(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates max(euint128 a, euint32 b)  and returns the result.
     */
    function max(euint128 a, euint32 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates add(euint128 a, euint64 b)  and returns the result.
     */
    function add(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates sub(euint128 a, euint64 b)  and returns the result.
     */
    function sub(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, euint64 b)  and returns the result.
     */
    function mul(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint64 b)  and returns the result.
     */
    function and(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint64 b)  and returns the result.
     */
    function or(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint64 b)  and returns the result.
     */
    function xor(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint64 b)  and returns the result.
     */
    function eq(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint64 b)  and returns the result.
     */
    function ne(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates ge(euint128 a, euint64 b)  and returns the result.
     */
    function ge(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates gt(euint128 a, euint64 b)  and returns the result.
     */
    function gt(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates le(euint128 a, euint64 b)  and returns the result.
     */
    function le(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates lt(euint128 a, euint64 b)  and returns the result.
     */
    function lt(euint128 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates min(euint128 a, euint64 b)  and returns the result.
     */
    function min(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates max(euint128 a, euint64 b)  and returns the result.
     */
    function max(euint128 a, euint64 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates add(euint128 a, euint128 b)  and returns the result.
     */
    function add(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates sub(euint128 a, euint128 b)  and returns the result.
     */
    function sub(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, euint128 b)  and returns the result.
     */
    function mul(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint128 b)  and returns the result.
     */
    function and(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint128 b)  and returns the result.
     */
    function or(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint128 b)  and returns the result.
     */
    function xor(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint128 b)  and returns the result.
     */
    function eq(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint128 b)  and returns the result.
     */
    function ne(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates ge(euint128 a, euint128 b)  and returns the result.
     */
    function ge(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates gt(euint128 a, euint128 b)  and returns the result.
     */
    function gt(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates le(euint128 a, euint128 b)  and returns the result.
     */
    function le(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates lt(euint128 a, euint128 b)  and returns the result.
     */
    function lt(euint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates min(euint128 a, euint128 b)  and returns the result.
     */
    function min(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates max(euint128 a, euint128 b)  and returns the result.
     */
    function max(euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint128 a, euint256 b)  and returns the result.
     */
    function and(euint128 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint128 a, euint256 b)  and returns the result.
     */
    function or(euint128 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint128 a, euint256 b)  and returns the result.
     */
    function xor(euint128 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint128 a, euint256 b)  and returns the result.
     */
    function eq(euint128 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint128 a, euint256 b)  and returns the result.
     */
    function ne(euint128 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(asEuint256(a)), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(eaddress a, eaddress b) and returns the result.
     */
    function eq(eaddress a, eaddress b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEaddress(address(0));
        }
        if (!isInitialized(b)) {
            b = asEaddress(address(0));
        }
        return ebool.wrap(Impl.eq(eaddress.unwrap(a), eaddress.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(eaddress a, eaddress b) and returns the result.
     */
    function ne(eaddress a, eaddress b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEaddress(address(0));
        }
        if (!isInitialized(b)) {
            b = asEaddress(address(0));
        }
        return ebool.wrap(Impl.ne(eaddress.unwrap(a), eaddress.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint8 b)  and returns the result.
     */
    function and(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint8 b)  and returns the result.
     */
    function or(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint8 b)  and returns the result.
     */
    function xor(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint8 b)  and returns the result.
     */
    function eq(euint256 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint8 b)  and returns the result.
     */
    function ne(euint256 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint16 b)  and returns the result.
     */
    function and(euint256 a, euint16 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint16 b)  and returns the result.
     */
    function or(euint256 a, euint16 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint16 b)  and returns the result.
     */
    function xor(euint256 a, euint16 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint16 b)  and returns the result.
     */
    function eq(euint256 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint16 b)  and returns the result.
     */
    function ne(euint256 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint32 b)  and returns the result.
     */
    function and(euint256 a, euint32 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint32 b)  and returns the result.
     */
    function or(euint256 a, euint32 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint32 b)  and returns the result.
     */
    function xor(euint256 a, euint32 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint32 b)  and returns the result.
     */
    function eq(euint256 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint32 b)  and returns the result.
     */
    function ne(euint256 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint64 b)  and returns the result.
     */
    function and(euint256 a, euint64 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint64 b)  and returns the result.
     */
    function or(euint256 a, euint64 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint64 b)  and returns the result.
     */
    function xor(euint256 a, euint64 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint64 b)  and returns the result.
     */
    function eq(euint256 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint64 b)  and returns the result.
     */
    function ne(euint256 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint128 b)  and returns the result.
     */
    function and(euint256 a, euint128 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint128 b)  and returns the result.
     */
    function or(euint256 a, euint128 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint128 b)  and returns the result.
     */
    function xor(euint256 a, euint128 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint128 b)  and returns the result.
     */
    function eq(euint256 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint128 b)  and returns the result.
     */
    function ne(euint256 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates and(euint256 a, euint256 b)  and returns the result.
     */
    function and(euint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates or(euint256 a, euint256 b)  and returns the result.
     */
    function or(euint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates xor(euint256 a, euint256 b)  and returns the result.
     */
    function xor(euint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates eq(euint256 a, euint256 b)  and returns the result.
     */
    function eq(euint256 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates ne(euint256 a, euint256 b)  and returns the result.
     */
    function ne(euint256 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), euint256.unwrap(b), false));
    }

    /**
     * @dev Evaluates and(ebool a, bool b) and returns the result.
     */
    function and(ebool a, bool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        return ebool.wrap(Impl.and(ebool.unwrap(a), bytes32(uint256(b ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates and(bool a, ebool b) and returns the result.
     */
    function and(bool a, ebool b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.and(ebool.unwrap(b), bytes32(uint256(a ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates or(ebool a, bool b) and returns the result.
     */
    function or(ebool a, bool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        return ebool.wrap(Impl.or(ebool.unwrap(a), bytes32(uint256(b ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates or(bool a, ebool b) and returns the result.
     */
    function or(bool a, ebool b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.or(ebool.unwrap(b), bytes32(uint256(a ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates xor(ebool a, bool b) and returns the result.
     */
    function xor(ebool a, bool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        return ebool.wrap(Impl.xor(ebool.unwrap(a), bytes32(uint256(b ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates xor(bool a, ebool b) and returns the result.
     */
    function xor(bool a, ebool b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.xor(ebool.unwrap(b), bytes32(uint256(a ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates eq(ebool a, bool b) and returns the result.
     */
    function eq(ebool a, bool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        return ebool.wrap(Impl.eq(ebool.unwrap(a), bytes32(uint256(b ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates eq(bool a, ebool b) and returns the result.
     */
    function eq(bool a, ebool b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.eq(ebool.unwrap(b), bytes32(uint256(a ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates ne(ebool a, bool b) and returns the result.
     */
    function ne(ebool a, bool b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        return ebool.wrap(Impl.ne(ebool.unwrap(a), bytes32(uint256(b ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates ne(bool a, ebool b) and returns the result.
     */
    function ne(bool a, ebool b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.ne(ebool.unwrap(b), bytes32(uint256(a ? 1 : 0)), true));
    }

    /**
     * @dev Evaluates add(euint8 a, uint8 b) and returns the result.
     */
    function add(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates add(uint8 a, euint8 b) and returns the result.
     */
    function add(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates sub(euint8 a, uint8 b) and returns the result.
     */
    function sub(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates sub(uint8 a, euint8 b) and returns the result.
     */
    function sub(uint8 a, euint8 b) internal returns (euint8) {
        euint8 aEnc = asEuint8(a);
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(aEnc), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint8 a, uint8 b) and returns the result.
     */
    function mul(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates mul(uint8 a, euint8 b) and returns the result.
     */
    function mul(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates div(euint8 a, uint8 b) and returns the result.
     */
    function div(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.div(euint8.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates rem(euint8 a, uint8 b) and returns the result.
     */
    function rem(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.rem(euint8.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates and(euint8 a, uint8 b) and returns the result.
     */
    function and(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.and(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint8 a, euint8 b) and returns the result.
     */
    function and(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.and(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint8 a, uint8 b) and returns the result.
     */
    function or(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.or(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint8 a, euint8 b) and returns the result.
     */
    function or(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.or(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint8 a, uint8 b) and returns the result.
     */
    function xor(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.xor(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint8 a, euint8 b) and returns the result.
     */
    function xor(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.xor(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint8 a, uint8 b) and returns the result.
     */
    function eq(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint8 a, euint8 b) and returns the result.
     */
    function eq(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint8 a, uint8 b) and returns the result.
     */
    function ne(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint8 a, euint8 b) and returns the result.
     */
    function ne(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ge(euint8 a, uint8 b) and returns the result.
     */
    function ge(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ge(uint8 a, euint8 b) and returns the result.
     */
    function ge(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates gt(euint8 a, uint8 b) and returns the result.
     */
    function gt(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates gt(uint8 a, euint8 b) and returns the result.
     */
    function gt(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates le(euint8 a, uint8 b) and returns the result.
     */
    function le(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates le(uint8 a, euint8 b) and returns the result.
     */
    function le(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates lt(euint8 a, uint8 b) and returns the result.
     */
    function lt(euint8 a, uint8 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates lt(uint8 a, euint8 b) and returns the result.
     */
    function lt(uint8 a, euint8 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates min(euint8 a, uint8 b) and returns the result.
     */
    function min(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates min(uint8 a, euint8 b) and returns the result.
     */
    function min(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates max(euint8 a, uint8 b) and returns the result.
     */
    function max(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates max(uint8 a, euint8 b) and returns the result.
     */
    function max(uint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates add(euint16 a, uint16 b) and returns the result.
     */
    function add(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates add(uint16 a, euint16 b) and returns the result.
     */
    function add(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates sub(euint16 a, uint16 b) and returns the result.
     */
    function sub(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates sub(uint16 a, euint16 b) and returns the result.
     */
    function sub(uint16 a, euint16 b) internal returns (euint16) {
        euint16 aEnc = asEuint16(a);
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(aEnc), euint16.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint16 a, uint16 b) and returns the result.
     */
    function mul(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates mul(uint16 a, euint16 b) and returns the result.
     */
    function mul(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates div(euint16 a, uint16 b) and returns the result.
     */
    function div(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.div(euint16.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates rem(euint16 a, uint16 b) and returns the result.
     */
    function rem(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.rem(euint16.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates and(euint16 a, uint16 b) and returns the result.
     */
    function and(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint16 a, euint16 b) and returns the result.
     */
    function and(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint16 a, uint16 b) and returns the result.
     */
    function or(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint16 a, euint16 b) and returns the result.
     */
    function or(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint16 a, uint16 b) and returns the result.
     */
    function xor(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint16 a, euint16 b) and returns the result.
     */
    function xor(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint16 a, uint16 b) and returns the result.
     */
    function eq(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint16 a, euint16 b) and returns the result.
     */
    function eq(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.eq(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint16 a, uint16 b) and returns the result.
     */
    function ne(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint16 a, euint16 b) and returns the result.
     */
    function ne(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ne(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ge(euint16 a, uint16 b) and returns the result.
     */
    function ge(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ge(uint16 a, euint16 b) and returns the result.
     */
    function ge(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates gt(euint16 a, uint16 b) and returns the result.
     */
    function gt(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates gt(uint16 a, euint16 b) and returns the result.
     */
    function gt(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates le(euint16 a, uint16 b) and returns the result.
     */
    function le(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.le(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates le(uint16 a, euint16 b) and returns the result.
     */
    function le(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.ge(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates lt(euint16 a, uint16 b) and returns the result.
     */
    function lt(euint16 a, uint16 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.lt(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates lt(uint16 a, euint16 b) and returns the result.
     */
    function lt(uint16 a, euint16 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.gt(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates min(euint16 a, uint16 b) and returns the result.
     */
    function min(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates min(uint16 a, euint16 b) and returns the result.
     */
    function min(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates max(euint16 a, uint16 b) and returns the result.
     */
    function max(euint16 a, uint16 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates max(uint16 a, euint16 b) and returns the result.
     */
    function max(uint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates add(euint32 a, uint32 b) and returns the result.
     */
    function add(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates add(uint32 a, euint32 b) and returns the result.
     */
    function add(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates sub(euint32 a, uint32 b) and returns the result.
     */
    function sub(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates sub(uint32 a, euint32 b) and returns the result.
     */
    function sub(uint32 a, euint32 b) internal returns (euint32) {
        euint32 aEnc = asEuint32(a);
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(aEnc), euint32.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint32 a, uint32 b) and returns the result.
     */
    function mul(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates mul(uint32 a, euint32 b) and returns the result.
     */
    function mul(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates div(euint32 a, uint32 b) and returns the result.
     */
    function div(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.div(euint32.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates rem(euint32 a, uint32 b) and returns the result.
     */
    function rem(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.rem(euint32.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates and(euint32 a, uint32 b) and returns the result.
     */
    function and(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint32 a, euint32 b) and returns the result.
     */
    function and(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint32 a, uint32 b) and returns the result.
     */
    function or(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint32 a, euint32 b) and returns the result.
     */
    function or(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint32 a, uint32 b) and returns the result.
     */
    function xor(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint32 a, euint32 b) and returns the result.
     */
    function xor(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint32 a, uint32 b) and returns the result.
     */
    function eq(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint32 a, euint32 b) and returns the result.
     */
    function eq(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.eq(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint32 a, uint32 b) and returns the result.
     */
    function ne(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint32 a, euint32 b) and returns the result.
     */
    function ne(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ne(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ge(euint32 a, uint32 b) and returns the result.
     */
    function ge(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ge(uint32 a, euint32 b) and returns the result.
     */
    function ge(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates gt(euint32 a, uint32 b) and returns the result.
     */
    function gt(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates gt(uint32 a, euint32 b) and returns the result.
     */
    function gt(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates le(euint32 a, uint32 b) and returns the result.
     */
    function le(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.le(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates le(uint32 a, euint32 b) and returns the result.
     */
    function le(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.ge(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates lt(euint32 a, uint32 b) and returns the result.
     */
    function lt(euint32 a, uint32 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.lt(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates lt(uint32 a, euint32 b) and returns the result.
     */
    function lt(uint32 a, euint32 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.gt(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates min(euint32 a, uint32 b) and returns the result.
     */
    function min(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates min(uint32 a, euint32 b) and returns the result.
     */
    function min(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates max(euint32 a, uint32 b) and returns the result.
     */
    function max(euint32 a, uint32 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates max(uint32 a, euint32 b) and returns the result.
     */
    function max(uint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates add(euint64 a, uint64 b) and returns the result.
     */
    function add(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates add(uint64 a, euint64 b) and returns the result.
     */
    function add(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.add(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates sub(euint64 a, uint64 b) and returns the result.
     */
    function sub(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates sub(uint64 a, euint64 b) and returns the result.
     */
    function sub(uint64 a, euint64 b) internal returns (euint64) {
        euint64 aEnc = asEuint64(a);
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.sub(euint64.unwrap(aEnc), euint64.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint64 a, uint64 b) and returns the result.
     */
    function mul(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates mul(uint64 a, euint64 b) and returns the result.
     */
    function mul(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.mul(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates div(euint64 a, uint64 b) and returns the result.
     */
    function div(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.div(euint64.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates rem(euint64 a, uint64 b) and returns the result.
     */
    function rem(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.rem(euint64.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates and(euint64 a, uint64 b) and returns the result.
     */
    function and(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint64 a, euint64 b) and returns the result.
     */
    function and(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.and(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint64 a, uint64 b) and returns the result.
     */
    function or(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint64 a, euint64 b) and returns the result.
     */
    function or(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.or(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint64 a, uint64 b) and returns the result.
     */
    function xor(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint64 a, euint64 b) and returns the result.
     */
    function xor(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.xor(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint64 a, uint64 b) and returns the result.
     */
    function eq(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint64 a, euint64 b) and returns the result.
     */
    function eq(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.eq(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint64 a, uint64 b) and returns the result.
     */
    function ne(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint64 a, euint64 b) and returns the result.
     */
    function ne(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ne(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ge(euint64 a, uint64 b) and returns the result.
     */
    function ge(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ge(uint64 a, euint64 b) and returns the result.
     */
    function ge(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates gt(euint64 a, uint64 b) and returns the result.
     */
    function gt(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates gt(uint64 a, euint64 b) and returns the result.
     */
    function gt(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates le(euint64 a, uint64 b) and returns the result.
     */
    function le(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.le(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates le(uint64 a, euint64 b) and returns the result.
     */
    function le(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.ge(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates lt(euint64 a, uint64 b) and returns the result.
     */
    function lt(euint64 a, uint64 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return ebool.wrap(Impl.lt(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates lt(uint64 a, euint64 b) and returns the result.
     */
    function lt(uint64 a, euint64 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return ebool.wrap(Impl.gt(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates min(euint64 a, uint64 b) and returns the result.
     */
    function min(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates min(uint64 a, euint64 b) and returns the result.
     */
    function min(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.min(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates max(euint64 a, uint64 b) and returns the result.
     */
    function max(euint64 a, uint64 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates max(uint64 a, euint64 b) and returns the result.
     */
    function max(uint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.max(euint64.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates add(euint128 a, uint128 b) and returns the result.
     */
    function add(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates add(uint128 a, euint128 b) and returns the result.
     */
    function add(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.add(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates sub(euint128 a, uint128 b) and returns the result.
     */
    function sub(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates sub(uint128 a, euint128 b) and returns the result.
     */
    function sub(uint128 a, euint128 b) internal returns (euint128) {
        euint128 aEnc = asEuint128(a);
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.sub(euint128.unwrap(aEnc), euint128.unwrap(b), false));
    }

    /**
     * @dev Evaluates mul(euint128 a, uint128 b) and returns the result.
     */
    function mul(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates mul(uint128 a, euint128 b) and returns the result.
     */
    function mul(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.mul(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates div(euint128 a, uint128 b) and returns the result.
     */
    function div(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.div(euint128.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates rem(euint128 a, uint128 b) and returns the result.
     */
    function rem(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.rem(euint128.unwrap(a), bytes32(uint256(b))));
    }

    /**
     * @dev Evaluates and(euint128 a, uint128 b) and returns the result.
     */
    function and(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint128 a, euint128 b) and returns the result.
     */
    function and(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.and(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint128 a, uint128 b) and returns the result.
     */
    function or(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint128 a, euint128 b) and returns the result.
     */
    function or(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.or(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint128 a, uint128 b) and returns the result.
     */
    function xor(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint128 a, euint128 b) and returns the result.
     */
    function xor(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.xor(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint128 a, uint128 b) and returns the result.
     */
    function eq(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint128 a, euint128 b) and returns the result.
     */
    function eq(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.eq(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint128 a, uint128 b) and returns the result.
     */
    function ne(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint128 a, euint128 b) and returns the result.
     */
    function ne(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ne(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ge(euint128 a, uint128 b) and returns the result.
     */
    function ge(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ge(uint128 a, euint128 b) and returns the result.
     */
    function ge(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates gt(euint128 a, uint128 b) and returns the result.
     */
    function gt(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates gt(uint128 a, euint128 b) and returns the result.
     */
    function gt(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates le(euint128 a, uint128 b) and returns the result.
     */
    function le(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.le(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates le(uint128 a, euint128 b) and returns the result.
     */
    function le(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.ge(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates lt(euint128 a, uint128 b) and returns the result.
     */
    function lt(euint128 a, uint128 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return ebool.wrap(Impl.lt(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates lt(uint128 a, euint128 b) and returns the result.
     */
    function lt(uint128 a, euint128 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return ebool.wrap(Impl.gt(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates min(euint128 a, uint128 b) and returns the result.
     */
    function min(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates min(uint128 a, euint128 b) and returns the result.
     */
    function min(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.min(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates max(euint128 a, uint128 b) and returns the result.
     */
    function max(euint128 a, uint128 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates max(uint128 a, euint128 b) and returns the result.
     */
    function max(uint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.max(euint128.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(eaddress a, address b) and returns the result.
     */
    function eq(eaddress a, address b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEaddress(address(0));
        }
        return ebool.wrap(Impl.eq(eaddress.unwrap(a), bytes32(uint256(uint160(b))), true));
    }

    /**
     * @dev Evaluates eq(address a, eaddress b) and returns the result.
     */
    function eq(address a, eaddress b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEaddress(address(0));
        }
        return ebool.wrap(Impl.eq(eaddress.unwrap(b), bytes32(uint256(uint160(a))), true));
    }

    /**
     * @dev Evaluates ne(eaddress a, address b) and returns the result.
     */
    function ne(eaddress a, address b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEaddress(address(0));
        }
        return ebool.wrap(Impl.ne(eaddress.unwrap(a), bytes32(uint256(uint160(b))), true));
    }

    /**
     * @dev Evaluates ne(address a, eaddress b) and returns the result.
     */
    function ne(address a, eaddress b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEaddress(address(0));
        }
        return ebool.wrap(Impl.ne(eaddress.unwrap(b), bytes32(uint256(uint160(a))), true));
    }

    /**
     * @dev Evaluates and(euint256 a, uint256 b) and returns the result.
     */
    function and(euint256 a, uint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates and(uint256 a, euint256 b) and returns the result.
     */
    function and(uint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.and(euint256.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates or(euint256 a, uint256 b) and returns the result.
     */
    function or(euint256 a, uint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates or(uint256 a, euint256 b) and returns the result.
     */
    function or(uint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.or(euint256.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates xor(euint256 a, uint256 b) and returns the result.
     */
    function xor(euint256 a, uint256 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates xor(uint256 a, euint256 b) and returns the result.
     */
    function xor(uint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.xor(euint256.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates eq(euint256 a, uint256 b) and returns the result.
     */
    function eq(euint256 a, uint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates eq(uint256 a, euint256 b) and returns the result.
     */
    function eq(uint256 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.eq(euint256.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates ne(euint256 a, uint256 b) and returns the result.
     */
    function ne(euint256 a, uint256 b) internal returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates ne(uint256 a, euint256 b) and returns the result.
     */
    function ne(uint256 a, euint256 b) internal returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return ebool.wrap(Impl.ne(euint256.unwrap(b), bytes32(uint256(a)), true));
    }

    /**
     * @dev Evaluates shl(euint8 a, euint8 b) and returns the result.
     */
    function shl(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shl(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates shl(euint8 a, uint8) and returns the result.
     */
    function shl(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.shl(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint8 a, euint8 b) and returns the result.
     */
    function shr(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shr(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates shr(euint8 a, uint8) and returns the result.
     */
    function shr(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.shr(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint8 a, euint8 b) and returns the result.
     */
    function rotl(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.rotl(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates rotl(euint8 a, uint8) and returns the result.
     */
    function rotl(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.rotl(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint8 a, euint8 b) and returns the result.
     */
    function rotr(euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.rotr(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    /**
     * @dev Evaluates rotr(euint8 a, uint8) and returns the result.
     */
    function rotr(euint8 a, uint8 b) internal returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.rotr(euint8.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shl(euint16 a, euint8 b) and returns the result.
     */
    function shl(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates shl(euint16 a, uint8) and returns the result.
     */
    function shl(euint16 a, uint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint16 a, euint8 b) and returns the result.
     */
    function shr(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates shr(euint16 a, uint8) and returns the result.
     */
    function shr(euint16 a, uint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint16 a, euint8 b) and returns the result.
     */
    function rotl(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.rotl(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates rotl(euint16 a, uint8) and returns the result.
     */
    function rotl(euint16 a, uint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.rotl(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint16 a, euint8 b) and returns the result.
     */
    function rotr(euint16 a, euint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.rotr(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    /**
     * @dev Evaluates rotr(euint16 a, uint8) and returns the result.
     */
    function rotr(euint16 a, uint8 b) internal returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.rotr(euint16.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shl(euint32 a, euint8 b) and returns the result.
     */
    function shl(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates shl(euint32 a, uint8) and returns the result.
     */
    function shl(euint32 a, uint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint32 a, euint8 b) and returns the result.
     */
    function shr(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates shr(euint32 a, uint8) and returns the result.
     */
    function shr(euint32 a, uint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint32 a, euint8 b) and returns the result.
     */
    function rotl(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.rotl(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates rotl(euint32 a, uint8) and returns the result.
     */
    function rotl(euint32 a, uint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.rotl(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint32 a, euint8 b) and returns the result.
     */
    function rotr(euint32 a, euint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.rotr(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    /**
     * @dev Evaluates rotr(euint32 a, uint8) and returns the result.
     */
    function rotr(euint32 a, uint8 b) internal returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.rotr(euint32.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shl(euint64 a, euint8 b) and returns the result.
     */
    function shl(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.shl(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates shl(euint64 a, uint8) and returns the result.
     */
    function shl(euint64 a, uint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.shl(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint64 a, euint8 b) and returns the result.
     */
    function shr(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.shr(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates shr(euint64 a, uint8) and returns the result.
     */
    function shr(euint64 a, uint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.shr(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint64 a, euint8 b) and returns the result.
     */
    function rotl(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.rotl(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates rotl(euint64 a, uint8) and returns the result.
     */
    function rotl(euint64 a, uint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.rotl(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint64 a, euint8 b) and returns the result.
     */
    function rotr(euint64 a, euint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint64.wrap(Impl.rotr(euint64.unwrap(a), euint64.unwrap(asEuint64(b)), false));
    }

    /**
     * @dev Evaluates rotr(euint64 a, uint8) and returns the result.
     */
    function rotr(euint64 a, uint8 b) internal returns (euint64) {
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        return euint64.wrap(Impl.rotr(euint64.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shl(euint128 a, euint8 b) and returns the result.
     */
    function shl(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.shl(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates shl(euint128 a, uint8) and returns the result.
     */
    function shl(euint128 a, uint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.shl(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint128 a, euint8 b) and returns the result.
     */
    function shr(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.shr(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates shr(euint128 a, uint8) and returns the result.
     */
    function shr(euint128 a, uint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.shr(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint128 a, euint8 b) and returns the result.
     */
    function rotl(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.rotl(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates rotl(euint128 a, uint8) and returns the result.
     */
    function rotl(euint128 a, uint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.rotl(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint128 a, euint8 b) and returns the result.
     */
    function rotr(euint128 a, euint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint128.wrap(Impl.rotr(euint128.unwrap(a), euint128.unwrap(asEuint128(b)), false));
    }

    /**
     * @dev Evaluates rotr(euint128 a, uint8) and returns the result.
     */
    function rotr(euint128 a, uint8 b) internal returns (euint128) {
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        return euint128.wrap(Impl.rotr(euint128.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shl(euint256 a, euint8 b) and returns the result.
     */
    function shl(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.shl(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates shl(euint256 a, uint8) and returns the result.
     */
    function shl(euint256 a, uint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.shl(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates shr(euint256 a, euint8 b) and returns the result.
     */
    function shr(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.shr(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates shr(euint256 a, uint8) and returns the result.
     */
    function shr(euint256 a, uint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.shr(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotl(euint256 a, euint8 b) and returns the result.
     */
    function rotl(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.rotl(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates rotl(euint256 a, uint8) and returns the result.
     */
    function rotl(euint256 a, uint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.rotl(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev Evaluates rotr(euint256 a, euint8 b) and returns the result.
     */
    function rotr(euint256 a, euint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint256.wrap(Impl.rotr(euint256.unwrap(a), euint256.unwrap(asEuint256(b)), false));
    }

    /**
     * @dev Evaluates rotr(euint256 a, uint8) and returns the result.
     */
    function rotr(euint256 a, uint8 b) internal returns (euint256) {
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        return euint256.wrap(Impl.rotr(euint256.unwrap(a), bytes32(uint256(b)), true));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, ebool a, ebool b) internal returns (ebool) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEbool(false);
        }
        if (!isInitialized(b)) {
            b = asEbool(false);
        }
        return ebool.wrap(Impl.select(ebool.unwrap(control), ebool.unwrap(a), ebool.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint8 a, euint8 b) internal returns (euint8) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.select(ebool.unwrap(control), euint8.unwrap(a), euint8.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint16 a, euint16 b) internal returns (euint16) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.select(ebool.unwrap(control), euint16.unwrap(a), euint16.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint32 a, euint32 b) internal returns (euint32) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.select(ebool.unwrap(control), euint32.unwrap(a), euint32.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint64 a, euint64 b) internal returns (euint64) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint64(0);
        }
        if (!isInitialized(b)) {
            b = asEuint64(0);
        }
        return euint64.wrap(Impl.select(ebool.unwrap(control), euint64.unwrap(a), euint64.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint128 a, euint128 b) internal returns (euint128) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint128(0);
        }
        if (!isInitialized(b)) {
            b = asEuint128(0);
        }
        return euint128.wrap(Impl.select(ebool.unwrap(control), euint128.unwrap(a), euint128.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, eaddress a, eaddress b) internal returns (eaddress) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEaddress(address(0));
        }
        if (!isInitialized(b)) {
            b = asEaddress(address(0));
        }
        return eaddress.wrap(Impl.select(ebool.unwrap(control), eaddress.unwrap(a), eaddress.unwrap(b)));
    }

    /**
     * @dev If 'control's value is 'true', the result has the same value as 'ifTrue'.
     *      If 'control's value is 'false', the result has the same value as 'ifFalse'.
     */
    function select(ebool control, euint256 a, euint256 b) internal returns (euint256) {
        if (!isInitialized(control)) {
            control = asEbool(false);
        }
        if (!isInitialized(a)) {
            a = asEuint256(0);
        }
        if (!isInitialized(b)) {
            b = asEuint256(0);
        }
        return euint256.wrap(Impl.select(ebool.unwrap(control), euint256.unwrap(a), euint256.unwrap(b)));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'euint8'.
     */
    function asEuint8(euint16 value) internal returns (euint8) {
        return euint8.wrap(Impl.cast(euint16.unwrap(value), FheType.Uint8));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'euint8'.
     */
    function asEuint8(euint32 value) internal returns (euint8) {
        return euint8.wrap(Impl.cast(euint32.unwrap(value), FheType.Uint8));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'euint8'.
     */
    function asEuint8(euint64 value) internal returns (euint8) {
        return euint8.wrap(Impl.cast(euint64.unwrap(value), FheType.Uint8));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'euint8'.
     */
    function asEuint8(euint128 value) internal returns (euint8) {
        return euint8.wrap(Impl.cast(euint128.unwrap(value), FheType.Uint8));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'euint8'.
     */
    function asEuint8(euint256 value) internal returns (euint8) {
        return euint8.wrap(Impl.cast(euint256.unwrap(value), FheType.Uint8));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint8'.
     */
    function asEuint8(ebool b) internal returns (euint8) {
        return euint8.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint8));
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'ebool'.
     */
    function asEbool(euint8 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'euint16'.
     */
    function asEuint16(euint8 value) internal returns (euint16) {
        return euint16.wrap(Impl.cast(euint8.unwrap(value), FheType.Uint16));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'euint16'.
     */
    function asEuint16(euint32 value) internal returns (euint16) {
        return euint16.wrap(Impl.cast(euint32.unwrap(value), FheType.Uint16));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'euint16'.
     */
    function asEuint16(euint64 value) internal returns (euint16) {
        return euint16.wrap(Impl.cast(euint64.unwrap(value), FheType.Uint16));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'euint16'.
     */
    function asEuint16(euint128 value) internal returns (euint16) {
        return euint16.wrap(Impl.cast(euint128.unwrap(value), FheType.Uint16));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'euint16'.
     */
    function asEuint16(euint256 value) internal returns (euint16) {
        return euint16.wrap(Impl.cast(euint256.unwrap(value), FheType.Uint16));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint16'.
     */
    function asEuint16(ebool b) internal returns (euint16) {
        return euint16.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint16));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'ebool'.
     */
    function asEbool(euint16 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'euint32'.
     */
    function asEuint32(euint8 value) internal returns (euint32) {
        return euint32.wrap(Impl.cast(euint8.unwrap(value), FheType.Uint32));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'euint32'.
     */
    function asEuint32(euint16 value) internal returns (euint32) {
        return euint32.wrap(Impl.cast(euint16.unwrap(value), FheType.Uint32));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'euint32'.
     */
    function asEuint32(euint64 value) internal returns (euint32) {
        return euint32.wrap(Impl.cast(euint64.unwrap(value), FheType.Uint32));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'euint32'.
     */
    function asEuint32(euint128 value) internal returns (euint32) {
        return euint32.wrap(Impl.cast(euint128.unwrap(value), FheType.Uint32));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'euint32'.
     */
    function asEuint32(euint256 value) internal returns (euint32) {
        return euint32.wrap(Impl.cast(euint256.unwrap(value), FheType.Uint32));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint32'.
     */
    function asEuint32(ebool b) internal returns (euint32) {
        return euint32.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint32));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'ebool'.
     */
    function asEbool(euint32 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'euint64'.
     */
    function asEuint64(euint8 value) internal returns (euint64) {
        return euint64.wrap(Impl.cast(euint8.unwrap(value), FheType.Uint64));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'euint64'.
     */
    function asEuint64(euint16 value) internal returns (euint64) {
        return euint64.wrap(Impl.cast(euint16.unwrap(value), FheType.Uint64));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'euint64'.
     */
    function asEuint64(euint32 value) internal returns (euint64) {
        return euint64.wrap(Impl.cast(euint32.unwrap(value), FheType.Uint64));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'euint64'.
     */
    function asEuint64(euint128 value) internal returns (euint64) {
        return euint64.wrap(Impl.cast(euint128.unwrap(value), FheType.Uint64));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'euint64'.
     */
    function asEuint64(euint256 value) internal returns (euint64) {
        return euint64.wrap(Impl.cast(euint256.unwrap(value), FheType.Uint64));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint64'.
     */
    function asEuint64(ebool b) internal returns (euint64) {
        return euint64.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint64));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'ebool'.
     */
    function asEbool(euint64 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'euint128'.
     */
    function asEuint128(euint8 value) internal returns (euint128) {
        return euint128.wrap(Impl.cast(euint8.unwrap(value), FheType.Uint128));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'euint128'.
     */
    function asEuint128(euint16 value) internal returns (euint128) {
        return euint128.wrap(Impl.cast(euint16.unwrap(value), FheType.Uint128));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'euint128'.
     */
    function asEuint128(euint32 value) internal returns (euint128) {
        return euint128.wrap(Impl.cast(euint32.unwrap(value), FheType.Uint128));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'euint128'.
     */
    function asEuint128(euint64 value) internal returns (euint128) {
        return euint128.wrap(Impl.cast(euint64.unwrap(value), FheType.Uint128));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'euint128'.
     */
    function asEuint128(euint256 value) internal returns (euint128) {
        return euint128.wrap(Impl.cast(euint256.unwrap(value), FheType.Uint128));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint128'.
     */
    function asEuint128(ebool b) internal returns (euint128) {
        return euint128.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint128));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'ebool'.
     */
    function asEbool(euint128 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Casts an encrypted integer from 'euint8' to 'euint256'.
     */
    function asEuint256(euint8 value) internal returns (euint256) {
        return euint256.wrap(Impl.cast(euint8.unwrap(value), FheType.Uint256));
    }

    /**
     * @dev Casts an encrypted integer from 'euint16' to 'euint256'.
     */
    function asEuint256(euint16 value) internal returns (euint256) {
        return euint256.wrap(Impl.cast(euint16.unwrap(value), FheType.Uint256));
    }

    /**
     * @dev Casts an encrypted integer from 'euint32' to 'euint256'.
     */
    function asEuint256(euint32 value) internal returns (euint256) {
        return euint256.wrap(Impl.cast(euint32.unwrap(value), FheType.Uint256));
    }

    /**
     * @dev Casts an encrypted integer from 'euint64' to 'euint256'.
     */
    function asEuint256(euint64 value) internal returns (euint256) {
        return euint256.wrap(Impl.cast(euint64.unwrap(value), FheType.Uint256));
    }

    /**
     * @dev Casts an encrypted integer from 'euint128' to 'euint256'.
     */
    function asEuint256(euint128 value) internal returns (euint256) {
        return euint256.wrap(Impl.cast(euint128.unwrap(value), FheType.Uint256));
    }

    /**
    /** 
     * @dev Converts an 'ebool' to an 'euint256'.
     */
    function asEuint256(ebool b) internal returns (euint256) {
        return euint256.wrap(Impl.cast(ebool.unwrap(b), FheType.Uint256));
    }

    /**
     * @dev Casts an encrypted integer from 'euint256' to 'ebool'.
     */
    function asEbool(euint256 value) internal returns (ebool) {
        return ne(value, 0);
    }

    /**
     * @dev Evaluates not(ebool value) and returns the result.
     */
    function not(ebool value) internal returns (ebool) {
        return ebool.wrap(Impl.not(ebool.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint8 value) and returns the result.
     */
    function neg(euint8 value) internal returns (euint8) {
        return euint8.wrap(Impl.neg(euint8.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint8 value) and returns the result.
     */
    function not(euint8 value) internal returns (euint8) {
        return euint8.wrap(Impl.not(euint8.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint16 value) and returns the result.
     */
    function neg(euint16 value) internal returns (euint16) {
        return euint16.wrap(Impl.neg(euint16.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint16 value) and returns the result.
     */
    function not(euint16 value) internal returns (euint16) {
        return euint16.wrap(Impl.not(euint16.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint32 value) and returns the result.
     */
    function neg(euint32 value) internal returns (euint32) {
        return euint32.wrap(Impl.neg(euint32.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint32 value) and returns the result.
     */
    function not(euint32 value) internal returns (euint32) {
        return euint32.wrap(Impl.not(euint32.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint64 value) and returns the result.
     */
    function neg(euint64 value) internal returns (euint64) {
        return euint64.wrap(Impl.neg(euint64.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint64 value) and returns the result.
     */
    function not(euint64 value) internal returns (euint64) {
        return euint64.wrap(Impl.not(euint64.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint128 value) and returns the result.
     */
    function neg(euint128 value) internal returns (euint128) {
        return euint128.wrap(Impl.neg(euint128.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint128 value) and returns the result.
     */
    function not(euint128 value) internal returns (euint128) {
        return euint128.wrap(Impl.not(euint128.unwrap(value)));
    }

    /**
     * @dev Evaluates neg(euint256 value) and returns the result.
     */
    function neg(euint256 value) internal returns (euint256) {
        return euint256.wrap(Impl.neg(euint256.unwrap(value)));
    }

    /**
     * @dev Evaluates not(euint256 value) and returns the result.
     */
    function not(euint256 value) internal returns (euint256) {
        return euint256.wrap(Impl.not(euint256.unwrap(value)));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted ebool integer.
     */
    function fromExternal(externalEbool inputHandle, bytes memory inputProof) internal returns (ebool) {
        return ebool.wrap(Impl.verify(externalEbool.unwrap(inputHandle), inputProof, FheType.Bool));
    }

    /**
     * @dev Converts a plaintext boolean to an encrypted boolean.
     */
    function asEbool(bool value) internal returns (ebool) {
        return ebool.wrap(Impl.trivialEncrypt(value ? 1 : 0, FheType.Bool));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint8 integer.
     */
    function fromExternal(externalEuint8 inputHandle, bytes memory inputProof) internal returns (euint8) {
        return euint8.wrap(Impl.verify(externalEuint8.unwrap(inputHandle), inputProof, FheType.Uint8));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint8 integer.
     */
    function asEuint8(uint8 value) internal returns (euint8) {
        return euint8.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint8));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint16 integer.
     */
    function fromExternal(externalEuint16 inputHandle, bytes memory inputProof) internal returns (euint16) {
        return euint16.wrap(Impl.verify(externalEuint16.unwrap(inputHandle), inputProof, FheType.Uint16));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint16 integer.
     */
    function asEuint16(uint16 value) internal returns (euint16) {
        return euint16.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint16));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint32 integer.
     */
    function fromExternal(externalEuint32 inputHandle, bytes memory inputProof) internal returns (euint32) {
        return euint32.wrap(Impl.verify(externalEuint32.unwrap(inputHandle), inputProof, FheType.Uint32));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint32 integer.
     */
    function asEuint32(uint32 value) internal returns (euint32) {
        return euint32.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint32));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint64 integer.
     */
    function fromExternal(externalEuint64 inputHandle, bytes memory inputProof) internal returns (euint64) {
        return euint64.wrap(Impl.verify(externalEuint64.unwrap(inputHandle), inputProof, FheType.Uint64));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint64 integer.
     */
    function asEuint64(uint64 value) internal returns (euint64) {
        return euint64.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint64));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint128 integer.
     */
    function fromExternal(externalEuint128 inputHandle, bytes memory inputProof) internal returns (euint128) {
        return euint128.wrap(Impl.verify(externalEuint128.unwrap(inputHandle), inputProof, FheType.Uint128));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint128 integer.
     */
    function asEuint128(uint128 value) internal returns (euint128) {
        return euint128.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint128));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted eaddress integer.
     */
    function fromExternal(externalEaddress inputHandle, bytes memory inputProof) internal returns (eaddress) {
        return eaddress.wrap(Impl.verify(externalEaddress.unwrap(inputHandle), inputProof, FheType.Uint160));
    }

    /**
     * @dev Convert a plaintext value to an encrypted eaddress integer.
     */
    function asEaddress(address value) internal returns (eaddress) {
        return eaddress.wrap(Impl.trivialEncrypt(uint256(uint160(value)), FheType.Uint160));
    }

    /**
     * @dev Convert an inputHandle with corresponding inputProof to an encrypted euint256 integer.
     */
    function fromExternal(externalEuint256 inputHandle, bytes memory inputProof) internal returns (euint256) {
        return euint256.wrap(Impl.verify(externalEuint256.unwrap(inputHandle), inputProof, FheType.Uint256));
    }

    /**
     * @dev Convert a plaintext value to an encrypted euint256 integer.
     */
    function asEuint256(uint256 value) internal returns (euint256) {
        return euint256.wrap(Impl.trivialEncrypt(uint256(value), FheType.Uint256));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEbool() internal returns (ebool) {
        return ebool.wrap(Impl.rand(FheType.Bool));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint8() internal returns (euint8) {
        return euint8.wrap(Impl.rand(FheType.Uint8));
    }

    /**
     * @dev Generates a random encrypted 8-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint8(uint8 upperBound) internal returns (euint8) {
        return euint8.wrap(Impl.randBounded(upperBound, FheType.Uint8));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint16() internal returns (euint16) {
        return euint16.wrap(Impl.rand(FheType.Uint16));
    }

    /**
     * @dev Generates a random encrypted 16-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint16(uint16 upperBound) internal returns (euint16) {
        return euint16.wrap(Impl.randBounded(upperBound, FheType.Uint16));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint32() internal returns (euint32) {
        return euint32.wrap(Impl.rand(FheType.Uint32));
    }

    /**
     * @dev Generates a random encrypted 32-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint32(uint32 upperBound) internal returns (euint32) {
        return euint32.wrap(Impl.randBounded(upperBound, FheType.Uint32));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint64() internal returns (euint64) {
        return euint64.wrap(Impl.rand(FheType.Uint64));
    }

    /**
     * @dev Generates a random encrypted 64-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint64(uint64 upperBound) internal returns (euint64) {
        return euint64.wrap(Impl.randBounded(upperBound, FheType.Uint64));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint128() internal returns (euint128) {
        return euint128.wrap(Impl.rand(FheType.Uint128));
    }

    /**
     * @dev Generates a random encrypted 128-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint128(uint128 upperBound) internal returns (euint128) {
        return euint128.wrap(Impl.randBounded(upperBound, FheType.Uint128));
    }

    /**
     * @dev Generates a random encrypted value.
     */
    function randEuint256() internal returns (euint256) {
        return euint256.wrap(Impl.rand(FheType.Uint256));
    }

    /**
     * @dev Generates a random encrypted 256-bit unsigned integer in the [0, upperBound) range.
     *      The upperBound must be a power of 2.
     */
    function randEuint256(uint256 upperBound) internal returns (euint256) {
        return euint256.wrap(Impl.randBounded(upperBound, FheType.Uint256));
    }

    /**
     * @dev This function cleans the transient storage for the ACL (accounts) and the InputVerifier
     *      (input proofs).
     *      This could be useful for integration with Account Abstraction when bundling several
     *      UserOps calling the FHEVMExecutor.
     */
    function cleanTransientStorage() internal {
        Impl.cleanTransientStorageACL();
        Impl.cleanTransientStorageInputVerifier();
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(ebool value, address account) internal view returns (bool) {
        return Impl.isAllowed(ebool.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(ebool value) internal view returns (bool) {
        return Impl.isAllowed(ebool.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(ebool value, address account) internal returns (ebool) {
        Impl.allow(ebool.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(ebool value) internal returns (ebool) {
        Impl.allow(ebool.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(ebool value, address account) internal returns (ebool) {
        Impl.allowTransient(ebool.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(ebool value) internal returns (ebool) {
        Impl.makePubliclyDecryptable(ebool.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(ebool value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(ebool.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint8 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint8.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint8 value) internal view returns (bool) {
        return Impl.isAllowed(euint8.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint8 value, address account) internal returns (euint8) {
        Impl.allow(euint8.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint8 value) internal returns (euint8) {
        Impl.allow(euint8.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint8 value, address account) internal returns (euint8) {
        Impl.allowTransient(euint8.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint8 value) internal returns (euint8) {
        Impl.makePubliclyDecryptable(euint8.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint8 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint8.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint16 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint16.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint16 value) internal view returns (bool) {
        return Impl.isAllowed(euint16.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint16 value, address account) internal returns (euint16) {
        Impl.allow(euint16.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint16 value) internal returns (euint16) {
        Impl.allow(euint16.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint16 value, address account) internal returns (euint16) {
        Impl.allowTransient(euint16.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint16 value) internal returns (euint16) {
        Impl.makePubliclyDecryptable(euint16.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint16 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint16.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint32 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint32.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint32 value) internal view returns (bool) {
        return Impl.isAllowed(euint32.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint32 value, address account) internal returns (euint32) {
        Impl.allow(euint32.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint32 value) internal returns (euint32) {
        Impl.allow(euint32.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint32 value, address account) internal returns (euint32) {
        Impl.allowTransient(euint32.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint32 value) internal returns (euint32) {
        Impl.makePubliclyDecryptable(euint32.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint32 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint32.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint64 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint64.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint64 value) internal view returns (bool) {
        return Impl.isAllowed(euint64.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint64 value, address account) internal returns (euint64) {
        Impl.allow(euint64.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint64 value) internal returns (euint64) {
        Impl.allow(euint64.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint64 value, address account) internal returns (euint64) {
        Impl.allowTransient(euint64.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint64 value) internal returns (euint64) {
        Impl.makePubliclyDecryptable(euint64.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint64 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint64.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint128 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint128.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint128 value) internal view returns (bool) {
        return Impl.isAllowed(euint128.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint128 value, address account) internal returns (euint128) {
        Impl.allow(euint128.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint128 value) internal returns (euint128) {
        Impl.allow(euint128.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint128 value, address account) internal returns (euint128) {
        Impl.allowTransient(euint128.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint128 value) internal returns (euint128) {
        Impl.makePubliclyDecryptable(euint128.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint128 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint128.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(eaddress value, address account) internal view returns (bool) {
        return Impl.isAllowed(eaddress.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(eaddress value) internal view returns (bool) {
        return Impl.isAllowed(eaddress.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(eaddress value, address account) internal returns (eaddress) {
        Impl.allow(eaddress.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(eaddress value) internal returns (eaddress) {
        Impl.allow(eaddress.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(eaddress value, address account) internal returns (eaddress) {
        Impl.allowTransient(eaddress.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(eaddress value) internal returns (eaddress) {
        Impl.makePubliclyDecryptable(eaddress.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(eaddress value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(eaddress.unwrap(value));
    }

    /**
     * @dev Returns whether the account is allowed to use the value.
     */
    function isAllowed(euint256 value, address account) internal view returns (bool) {
        return Impl.isAllowed(euint256.unwrap(value), account);
    }

    /**
     * @dev Returns whether the sender is allowed to use the value.
     */
    function isSenderAllowed(euint256 value) internal view returns (bool) {
        return Impl.isAllowed(euint256.unwrap(value), msg.sender);
    }

    /**
     * @dev Allows the use of value for the address account.
     */
    function allow(euint256 value, address account) internal returns (euint256) {
        Impl.allow(euint256.unwrap(value), account);
        return value;
    }

    /**
     * @dev Allows the use of value for this address (address(this)).
     */
    function allowThis(euint256 value) internal returns (euint256) {
        Impl.allow(euint256.unwrap(value), address(this));
        return value;
    }

    /**
     * @dev Allows the use of value by address account for this transaction.
     */
    function allowTransient(euint256 value, address account) internal returns (euint256) {
        Impl.allowTransient(euint256.unwrap(value), account);
        return value;
    }

    /**
     * @dev Makes the value publicly decryptable.
     */
    function makePubliclyDecryptable(euint256 value) internal returns (euint256) {
        Impl.makePubliclyDecryptable(euint256.unwrap(value));
        return value;
    }

    /**
     * @dev Returns whether the the value is publicly decryptable.
     */
    function isPubliclyDecryptable(euint256 value) internal view returns (bool) {
        return Impl.isPubliclyDecryptable(euint256.unwrap(value));
    }

    /// @notice Reverts if the KMS signatures verification against the provided handles and public decryption data
    ///         fails.
    /// @dev The function MUST be called inside a public decryption callback function of a dApp contract
    ///      to verify the signatures and prevent fake decryption results for being submitted.
    /// @param handlesList The list of handles as an array of bytes32 to check
    /// @param abiEncodedCleartexts The ABI-encoded list of decrypted values associated with each handle in the `handlesList`.
    ///                             The ABI-encoded list order must match the `handlesList` order.
    /// @param decryptionProof The KMS public decryption proof. It includes the KMS signatures, associated metadata,
    ///                        and the context needed for verification.
    /// @dev Reverts if any of the following conditions are met:
    ///      - The `decryptionProof` is empty or has an invalid length.
    ///      - The number of valid signatures is zero or less than the configured KMS signers threshold.
    ///      - Any signature is produced by an address that is not a registered KMS signer.
    ///      - The signatures verification returns false.
    function checkSignatures(
        bytes32[] memory handlesList,
        bytes memory abiEncodedCleartexts,
        bytes memory decryptionProof
    ) internal {
        bool isVerified = _verifySignatures(handlesList, abiEncodedCleartexts, decryptionProof);
        if (!isVerified) {
            revert InvalidKMSSignatures();
        }
        emit PublicDecryptionVerified(handlesList, abiEncodedCleartexts);
    }

    /// @notice Verifies KMS signatures against the provided handles and public decryption data.
    /// @param handlesList The list of handles as an array of bytes32 to verify
    /// @param abiEncodedCleartexts The ABI-encoded list of decrypted values associated with each handle in the `handlesList`.
    ///                             The list order must match the list of handles in `handlesList`
    /// @param decryptionProof The KMS public decryption proof computed by the KMS Signers assiciated to `handlesList` and
    ///                       `abiEncodedCleartexts`
    /// @return true if the signatures verification succeeds, false otherwise
    /// @dev Private low-level function used to verify the KMS signatures.
    ///      Warning: this function never reverts, its boolean return value must be checked.
    ///      The decryptionProof is the numSigners + kmsSignatures + extraData (1 + 65*numSigners + extraData bytes)
    ///      Only static native solidity types for clear values are supported, so `abiEncodedCleartexts` is the concatenation of all clear values appended to 32 bytes.
    /// @dev Reverts if any of the following conditions are met by the underlying KMS verifier:
    ///      - The `decryptionProof` is empty or has an invalid length.
    ///      - The number of valid signatures is zero or less than the configured KMS signers threshold.
    ///      - Any signature is produced by an address that is not a registered KMS signer.
    function _verifySignatures(
        bytes32[] memory handlesList,
        bytes memory abiEncodedCleartexts,
        bytes memory decryptionProof
    ) private returns (bool) {
        CoprocessorConfig storage $ = Impl.getCoprocessorConfig();
        return
            IKMSVerifier($.KMSVerifierAddress).verifyDecryptionEIP712KMSSignatures(
                handlesList,
                abiEncodedCleartexts,
                decryptionProof
            );
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(ebool value) internal pure returns (bytes32 ct) {
        ct = ebool.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint8 value) internal pure returns (bytes32 ct) {
        ct = euint8.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint16 value) internal pure returns (bytes32 ct) {
        ct = euint16.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint32 value) internal pure returns (bytes32 ct) {
        ct = euint32.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint64 value) internal pure returns (bytes32 ct) {
        ct = euint64.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint128 value) internal pure returns (bytes32 ct) {
        ct = euint128.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(eaddress value) internal pure returns (bytes32 ct) {
        ct = eaddress.unwrap(value);
    }

    /**
     * @dev Converts handle from its custom type to the underlying bytes32. Used when requesting a decryption.
     */
    function toBytes32(euint256 value) internal pure returns (bytes32 ct) {
        ct = euint256.unwrap(value);
    }
}


// File @fhevm/solidity/config/ZamaConfig.sol@v0.9.1

// Original license: SPDX_License_Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.24;


/**
 * @title   ZamaConfig.
 * @notice  This library returns the FHEVM config for different networks
 *          with the contract addresses for (1) ACL, (2) CoprocessorAddress, (3) KMSVerifier,
 *          which are deployed & maintained by Zama.
 */
library ZamaConfig {
    /// @notice Returned if the Zama protocol is not supported on the current chain
    error ZamaProtocolUnsupported();

    function getEthereumCoprocessorConfig() internal view returns (CoprocessorConfig memory config) {
        if (block.chainid == 1) {
            config = _getEthereumConfig();
        } else if (block.chainid == 11155111) {
            config = _getSepoliaConfig();
        } else if (block.chainid == 31337) {
            config = _getLocalConfig();
        } else {
            revert ZamaProtocolUnsupported();
        }
    }

    function getConfidentialProtocolId() internal view returns (uint256) {
        if (block.chainid == 1) {
            return _getEthereumProtocolId();
        } else if (block.chainid == 11155111) {
            return _getSepoliaProtocolId();
        } else if (block.chainid == 31337) {
            return _getLocalProtocolId();
        }
        return 0;
    }

    /// @dev chainid == 1
    function _getEthereumProtocolId() private pure returns (uint256) {
        // Zama Ethereum protocol id is '1'
        return 1;
    }

    /// @dev chainid == 1
    function _getEthereumConfig() private pure returns (CoprocessorConfig memory) {
        // The addresses below are placeholders and should be replaced with actual addresses
        // once deployed on the Ethereum mainnet.
        return
            CoprocessorConfig({ACLAddress: address(0), CoprocessorAddress: address(0), KMSVerifierAddress: address(0)});
    }

    /// @dev chainid == 11155111
    function _getSepoliaProtocolId() private pure returns (uint256) {
        // Zama Ethereum Sepolia protocol id is '10000 + Zama Ethereum protocol id'
        return 10001;
    }

    /// @dev chainid == 11155111
    function _getSepoliaConfig() private pure returns (CoprocessorConfig memory) {
        return
            CoprocessorConfig({
                ACLAddress: 0xf0Ffdc93b7E186bC2f8CB3dAA75D86d1930A433D,
                CoprocessorAddress: 0x92C920834Ec8941d2C77D188936E1f7A6f49c127,
                KMSVerifierAddress: 0xbE0E383937d564D7FF0BC3b46c51f0bF8d5C311A
            });
    }

    /// @dev chainid == 31337
    function _getLocalProtocolId() private pure returns (uint256) {
        return type(uint256).max;
    }

    function _getLocalConfig() private pure returns (CoprocessorConfig memory) {
        return
            CoprocessorConfig({
                ACLAddress: 0x50157CFfD6bBFA2DECe204a89ec419c23ef5755D,
                CoprocessorAddress: 0xe3a9105a3a932253A70F126eb1E3b589C643dD24,
                KMSVerifierAddress: 0x901F8942346f7AB3a01F6D7613119Bca447Bb030
            });
    }
}

/**
 * @title   ZamaEthereumConfig.
 * @dev     This contract can be inherited by a contract wishing to use the FHEVM contracts provided by Zama
 *          on the Ethereum (mainnet) network (chainId = 1) or Sepolia (testnet) network (chainId = 11155111).
 *          Other providers may offer similar contracts deployed at different addresses.
 *          If you wish to use them, you should rely on the instructions from these providers.
 */
abstract contract ZamaEthereumConfig {
    constructor() {
        FHE.setCoprocessor(ZamaConfig.getEthereumCoprocessorConfig());
    }

    function confidentialProtocolId() public view returns (uint256) {
        return ZamaConfig.getConfidentialProtocolId();
    }
}


// File @openzeppelin/contracts/utils/Context.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// File @openzeppelin/contracts/interfaces/draft-IERC6093.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/draft-IERC6093.sol)
pragma solidity >=0.8.4;

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}


// File @openzeppelin/contracts/token/ERC20/IERC20.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


// File @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity >=0.6.2;

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}


// File @openzeppelin/contracts/token/ERC20/ERC20.sol@v5.4.0

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;




/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC-20
 * applications.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * Both values are immutable: they can only be set once during construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /// @inheritdoc IERC20
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IERC20
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /// @inheritdoc IERC20
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner`'s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner`'s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance < type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}


// File contracts/core/CampaignToken.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;


/**
 * @title CampaignToken
 * @author cristhedev (https://github.com/cris-the-dev)
 * @notice ERC20 token distributed to contributors of successful fundraising campaigns
 * @dev This token is deployed automatically when a campaign reaches its funding target.
 * Contributors receive tokens proportional to their contribution relative to the campaign target.
 * The token has a fixed maximum supply of 1 billion tokens and can only be minted by the
 * ConfidentialFundraising contract (the owner).
 *
 * Token Distribution Formula:
 * userTokens = (userContribution / campaignTarget) * MAX_SUPPLY
 *
 * Key Features:
 * - ERC20 compliant with standard transfer functionality
 * - Fixed maximum supply of 1 billion tokens (with 18 decimals)
 * - Mintable only by the campaign contract owner
 * - Immutable campaign ID reference
 *
 * @custom:security-contact tiennln.work@gmail.com
 */
contract CampaignToken is ERC20, Ownable {
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18; // 1 billion tokens
    uint16 public immutable campaignId;

    error ExceedsMaxSupply();

    /**
     * @notice Constructs a new campaign token
     * @dev Called by the ConfidentialFundraising contract when a campaign succeeds.
     * The campaign contract becomes the owner with exclusive minting privileges.
     * @param name The token name (chosen by campaign owner)
     * @param symbol The token symbol (chosen by campaign owner)
     * @param _campaignId The ID of the associated campaign
     * @param initialOwner The address that will own this token (the campaign contract)
     */
    constructor(
        string memory name,
        string memory symbol,
        uint16 _campaignId,
        address initialOwner
    ) ERC20(name, symbol) Ownable(initialOwner) {
        campaignId = _campaignId;
    }
    
    /**
     * @notice Mints tokens to a campaign contributor
     * @dev Can only be called by the owner (ConfidentialFundraising contract).
     * Called when a contributor claims their tokens after a successful campaign.
     * The total supply across all mints cannot exceed MAX_SUPPLY.
     * @param to The address of the contributor receiving tokens
     * @param amount The amount of tokens to mint (with 18 decimals)
     */
    function mint(address to, uint256 amount) external onlyOwner {
        if (totalSupply() + amount > MAX_SUPPLY) {
            revert ExceedsMaxSupply();
        }
        _mint(to, amount);
    }
}


// File contracts/interface/IDecryptionCallbacks.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IDecryptionCallbacks {

    function callbackDecryptMyContribution(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external;

    function callbackDecryptTotalRaised(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external;

    function callbackDecryptAvailableBalance(
        uint256 requestId,
        bytes memory cleartexts,
        bytes memory decryptionProof
    ) external;
}


// File contracts/interface/IFundraisingErrors.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IFundraisingErrors {
    error DataProcessing();
    error ContributionNotFound();
    error CampaignNotExist();
    error CampaignEnded();
    error AlreadyCancelled();
    error OnlyOwner();
    error CampaignStillActive();
    error AlreadyFinalized();
    error CampaignNotFinalized();
    error AlreadyClaimed();
    error UnauthorizedAccess();
    error TotalRaisedNotDecrypted();
    error MyContributionNotDecrypted();
    error CacheExpired();
    error DecryptAlreadyInProgress();
    error InvalidTarget();
    error InvalidDuration();
    error EmptyTitle();
    error TokenNameRequired();
    error TokenSymbolRequired();
    error NoTokensToClaim();
    error ContributionNotDecrypted();
}


// File contracts/interface/IFundraisingEvents.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IFundraisingEvents {
    event CampaignCreated(
        uint256 indexed campaignId,
        address indexed owner,
        string title,
        uint256 targetAmount,
        uint256 deadline
    );
    event ContributionMade(
        uint256 indexed campaignId,
        address indexed contributor
    );
    event CampaignFinalized(uint256 indexed campaignId, bool targetReached);
    event CampaignCancelled(uint256 indexed campaignId);
    event TokensClaimed(
        uint256 indexed campaignId,
        address indexed contributor
    );
    event TokensDistributed(
        uint16 indexed campaignId,
        address indexed contributor,
        uint256 amount
    );
    event CampaignFailed(uint16 indexed campaignId);
}


// File contracts/core/EncryptedHelper.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library EncryptedHelper {
    function decodeUserContribution(
        bytes memory cleartexts
    ) internal pure returns (uint64 contributedAmount) {
        assembly {
            let dataPtr := add(cleartexts, 0x20)
            contributedAmount := mload(dataPtr)
        }

        return (contributedAmount);
    }

    function decodeTotalRaised(
        bytes memory cleartexts
    ) internal pure returns (uint64 totalRaised) {
        assembly {
            let dataPtr := add(cleartexts, 0x20)
            totalRaised := mload(dataPtr)
        }

        return (totalRaised);
    }

    function decodeAvailableBalance(
        bytes memory cleartexts
    ) internal pure returns (uint64 contributedAmount) {
        assembly {
            let dataPtr := add(cleartexts, 0x20)
            contributedAmount := mload(dataPtr)
        }

        return (contributedAmount);
    }

    function decodeBool(
        bytes memory cleartexts
    ) internal pure returns (bool value) {
        assembly {
            let dataPtr := add(cleartexts, 0x20)
            let rawValue := mload(dataPtr)
            value := gt(rawValue, 0)
        }
        return (value);
    }

    /**
     * @notice Decode uint64 from cleartext
     */
    function decodeUint64(
        bytes memory cleartexts
    ) internal pure returns (uint64 value) {
        assembly {
            let dataPtr := add(cleartexts, 0x20)
            value := mload(dataPtr)
        }
        return (value);
    }
}


// File contracts/struct/CommonStruct.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library CommonStruct {
    enum DecryptStatus {
        NONE,
        PROCESSING,
        DECRYPTED
    }

    struct Uint64ResultWithExp {
        uint64 data;
        uint256 exp;
    }
}


// File contracts/struct/FundraisingStruct.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library FundraisingStruct {
    struct Campaign {
        address owner;
        string title;
        string description;
        euint64 totalRaised;
        uint64 targetAmount;
        uint256 deadline;
        bool finalized;
        bool cancelled;
        address tokenAddress;
    }

    struct DecryptUserContributionRequest {
        address userAddress;
        uint16 campaignId;
    }
}


// File contracts/storage/FundraisingStorage.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;


abstract contract FundraisingStorage {
    uint256 cacheTimeout = 600; // 10 mins cache

    mapping(uint16 => FundraisingStruct.Campaign) public campaigns;

    mapping(uint16 => mapping(address => bool)) public hasClaimed;

    mapping(uint16 => mapping(address => euint64)) internal encryptedContributions;
    mapping(uint16 => mapping(address => CommonStruct.Uint64ResultWithExp)) internal decryptedContributions;

    mapping(uint16 => CommonStruct.Uint64ResultWithExp) internal decryptedTotalRaised;
    mapping(uint256 => uint16) internal decryptTotalRaisedRequest; // @deprecated v0.9 - no longer used in self-relaying pattern
    mapping(uint16 => CommonStruct.DecryptStatus) internal decryptTotalRaisedStatus;

    mapping(uint256 => FundraisingStruct.DecryptUserContributionRequest) internal decryptMyContributionRequest; // @deprecated v0.9 - no longer used in self-relaying pattern
    mapping(uint16 => mapping(address => CommonStruct.DecryptStatus)) internal decryptMyContributionStatus;

    uint16 public campaignCount;

    // Mapping to track contributors per campaign
    mapping(uint16 => address[]) internal campaignContributors;
    mapping(uint16 => mapping(address => bool)) internal hasContributed;
    
    // Token claim tracking
    mapping(uint16 => mapping(address => bool)) public hasClaimedTokens;
}


// File contracts/struct/ShareVaultStruct.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library ShareVaultStruct {
    struct WithdrawalRequest {
        address userAddress;
    }
    
    struct LockRequest {
        address user;
        uint16 campaignId;
        euint64 amount;
    }
}


// File contracts/storage/ShareVaultStorage.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;


abstract contract ShareVaultStorage {
    // User balances (encrypted)
    mapping(address => euint64) internal encryptedBalances;

    // Locked amounts per user per campaign (encrypted)
    mapping(address => mapping(uint16 => euint64)) internal lockedAmounts;

    // Total locked per user (encrypted)
    mapping(address => euint64) internal totalLocked;

    // Decryption status and cached available balance
    mapping(address => CommonStruct.DecryptStatus)
        internal availableBalanceStatus;
    mapping(address => CommonStruct.Uint64ResultWithExp)
        internal decryptedAvailableBalance;
    mapping(uint256 => ShareVaultStruct.WithdrawalRequest)
        internal withdrawalRequests;

    // Pending available balance for v0.9 self-relaying verification
    mapping(address => euint64) internal pendingAvailableBalance;

    // Campaign contract address (authorized to lock/unlock)
    address public campaignContract;

    // Cache timeout (10 minutes)
    uint256 public constant CACHE_TIMEOUT = 600;
}


// File contracts/interface/impl/DecryptionCallback.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;









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


// File contracts/interface/IShareVaultErrors.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IShareVaultErrors {
    error OnlyCampaignContract();
    error InsufficientBalance();
    error InsufficientUnlockedBalance();
    error WithdrawalFailed();
    error MustDecryptFirst();
    error DecryptionProcessing();
    error DecryptionCacheExpired();
    error DecryptAlreadyInProgress();
    error OnlyOwner();
    error CampaignContractAlreadySet();
    error InvalidDepositAmount();
    error DepositAmountTooLarge();
    error NoBalance();
    error InvalidWithdrawalAmount();
    error InsufficientVaultBalance();
    error InsufficientAvailableBalance();
    error UserHasNoBalance();
    error NoLockedAmount();
}


// File contracts/interface/IShareVaultEvents.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IShareVaultEvents {
    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event FundsLocked(address indexed user, uint16 indexed campaignId);
    event FundsUnlocked(address indexed user, uint16 indexed campaignId);
    event FundsTransferred(
        address indexed from,
        address indexed to,
        uint16 indexed campaignId
    );
    event WithdrawalDecryptionRequested(
        address indexed user,
        uint256 requestId
    );
    event AvailableBalanceDecrypted(address indexed user, uint64 amount);
    event LockRequestInitiated(
        address indexed user,
        uint16 indexed campaignId,
        uint256 requestId
    );
}


// File contracts/ShareVault.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;









/**
 * @title ShareVault
 * @author cristhedev (https://github.com/cris-the-dev)
 * @notice Secure vault for managing encrypted user balances and campaign fund locks
 * @dev This contract acts as a decentralized escrow system for the ConfidentialFundraising platform.
 * It manages encrypted ETH balances, handles fund locking for active campaigns, and enables
 * privacy-preserving withdrawals through FHE-based balance verification.
 *
 * Key Features:
 * - Encrypted balance tracking for all users
 * - Campaign-specific fund locking mechanism
 * - Decryption-based withdrawal authorization
 * - Automatic balance permission management
 * - Support for multiple simultaneous campaign locks per user
 *
 * Security Model:
 * - Only the authorized campaign contract can lock/unlock/transfer funds
 * - Users must decrypt their available balance before withdrawal
 * - All encrypted operations use FHEVM for on-chain privacy
 *
 * @custom:security-contact tiennln.work@gmail.com
 */
contract ShareVault is
    ZamaEthereumConfig,
    IShareVaultEvents,
    IShareVaultErrors,
    ShareVaultStorage,
    DecryptionCallbacks
{
    using FHE for euint64;
    using FHE for ebool;

    modifier onlyCampaignContract() {
        if (msg.sender != campaignContract) {
            revert OnlyCampaignContract();
        }
        _;
    }

    address public owner;

    constructor() {
        campaignContract = address(0);
        owner = msg.sender;
    }

    /**
     * @notice Sets the authorized campaign contract address
     * @dev Can only be called once by the owner during initial setup. This address
     * will have exclusive permission to lock, unlock, and transfer user funds.
     * @param _campaignContract The address of the ConfidentialFundraising contract
     */
    function setCampaignContract(address _campaignContract) external {
        if (msg.sender != owner) {
            revert OnlyOwner();
        }
        if (campaignContract != address(0)) {
            revert CampaignContractAlreadySet();
        }
        campaignContract = _campaignContract;
    }

    /**
     * @notice Deposits ETH into the vault as an encrypted balance
     * @dev The deposited amount is encrypted on-chain and added to the user's balance.
     * Resets any cached decrypted balance values. Grants necessary FHE permissions
     * to the user and campaign contract.
     * @custom:emits Deposited
     */
    function deposit() external payable {
        if (msg.value == 0) {
            revert InvalidDepositAmount();
        }
        if (msg.value > type(uint64).max) {
            revert DepositAmountTooLarge();
        }

        euint64 amount = FHE.asEuint64(uint64(msg.value));
        euint64 currentBalance = encryptedBalances[msg.sender];

        if (FHE.isInitialized(currentBalance)) {
            encryptedBalances[msg.sender] = FHE.add(currentBalance, amount);
        } else {
            encryptedBalances[msg.sender] = amount;
        }

        // Grant permissions
        FHE.allowThis(encryptedBalances[msg.sender]);
        FHE.allow(encryptedBalances[msg.sender], msg.sender);

        // Only allow campaignContract if it's set
        if (campaignContract != address(0)) {
            FHE.allow(encryptedBalances[msg.sender], campaignContract);
        }

        // Reset cache
        decryptedAvailableBalance[msg.sender].data = 0;
        decryptedAvailableBalance[msg.sender].exp = 0;
        availableBalanceStatus[msg.sender] = CommonStruct.DecryptStatus.NONE;

        emit Deposited(msg.sender, msg.value);
    }

    /**
     * @notice Marks the user's available balance as publicly decryptable (v0.9 self-relaying)
     * @dev Calculates available balance as (total balance - total locked) and marks it for decryption.
     * After calling this, use the frontend relayer SDK's publicDecrypt() to get cleartext + proof,
     * then call submitAvailableBalanceDecryption() with the results.
     * @custom:emits WithdrawalDecryptionRequested
     */
    function requestAvailableBalanceDecryption() external {
        if (
            availableBalanceStatus[msg.sender] ==
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        euint64 balance = encryptedBalances[msg.sender];
        if (!FHE.isInitialized(balance)) {
            revert NoBalance();
        }

        // Calculate available balance: balance - locked
        euint64 available;
        euint64 locked = totalLocked[msg.sender];

        if (FHE.isInitialized(locked)) {
            available = FHE.sub(balance, locked);
        } else {
            available = balance;
        }

        // Allow the contract to read the available balance for decryption
        FHE.allowThis(available);

        // Mark as publicly decryptable (v0.9 pattern)
        FHE.makePubliclyDecryptable(available);

        // Store the encrypted available balance for later verification
        pendingAvailableBalance[msg.sender] = available;

        availableBalanceStatus[msg.sender] = CommonStruct
            .DecryptStatus
            .PROCESSING;

        emit WithdrawalDecryptionRequested(msg.sender, 0);
    }

    /**
     * @notice Submits and verifies the decrypted available balance (v0.9 self-relaying)
     * @dev Called by the user after obtaining cleartext + proof via publicDecrypt() from the relayer SDK.
     * Verifies the proof and caches the decrypted value.
     * @param cleartextAvailable The decrypted available balance amount (obtained from publicDecrypt)
     * @param proof The cryptographic proof (obtained from publicDecrypt)
     */
    function submitAvailableBalanceDecryption(
        uint64 cleartextAvailable,
        bytes calldata proof
    ) external {
        if (
            availableBalanceStatus[msg.sender] !=
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        euint64 available = pendingAvailableBalance[msg.sender];
        if (!FHE.isInitialized(available)) {
            revert NoBalance();
        }

        // Verify the decryption proof
        bytes32[] memory handles = new bytes32[](1);
        handles[0] = FHE.toBytes32(available);
        bytes memory cleartexts = abi.encode(cleartextAvailable);
        FHE.checkSignatures(handles, cleartexts, proof);

        // Cache the decrypted value
        decryptedAvailableBalance[msg.sender] = CommonStruct.Uint64ResultWithExp({
            data: cleartextAvailable,
            exp: block.timestamp + cacheTimeout
        });

        availableBalanceStatus[msg.sender] = CommonStruct.DecryptStatus.DECRYPTED;
    }

    /**
     * @notice Get the encrypted handle for pending available balance decryption
     * @dev Returns the handle that was marked as publicly decryptable for v0.9 self-relaying workflow
     * @return The encrypted handle as bytes32
     */
    function getPendingAvailableBalanceHandle() external view returns (bytes32) {
        euint64 pending = pendingAvailableBalance[msg.sender];
        if (!FHE.isInitialized(pending)) {
            revert NoBalance();
        }
        return FHE.toBytes32(pending);
    }

    /**
     * @notice Retrieves the user's decrypted available balance
     * @dev The balance must be decrypted first by calling requestAvailableBalanceDecryption().
     * Returns the cached decrypted value if not expired.
     * @return The available balance in wei (total balance minus locked amounts)
     */
    function getAvailableBalance() external view returns (uint64) {
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedAvailableBalance[msg.sender];

        uint64 available = decryptedWithExp.data;
        uint256 expTime = decryptedWithExp.exp;

        // Check if never decrypted
        if (expTime == 0) {
            if (
                availableBalanceStatus[msg.sender] ==
                CommonStruct.DecryptStatus.PROCESSING
            ) {
                revert DecryptionProcessing();
            }
            revert MustDecryptFirst();
        }

        // Check if expired
        if (expTime < block.timestamp) {
            revert DecryptionCacheExpired();
        }

        return available;
    }

    /**
     * @notice Retrieves the decryption status and cached available balance
     * @dev Useful for checking if decryption is in progress or if cache is expired
     * @return status The current decryption status (NONE/PROCESSING/DECRYPTED)
     * @return availableAmount The cached available balance (0 if not decrypted)
     * @return cacheExpiry The timestamp when the cached value expires
     */
    function getAvailableBalanceStatus()
        external
        view
        returns (
            CommonStruct.DecryptStatus status,
            uint64 availableAmount,
            uint256 cacheExpiry
        )
    {
        status = availableBalanceStatus[msg.sender];
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedAvailableBalance[msg.sender];

        availableAmount = decryptedWithExp.data;
        cacheExpiry = decryptedWithExp.exp;

        return (status, availableAmount, cacheExpiry);
    }

    /**
     * @notice Withdraws unlocked funds from the vault
     * @dev Users must first decrypt their available balance. The decryption acts as
     * authorization proof for the withdrawal. Resets the cached balance after withdrawal.
     * @param amount The amount to withdraw in wei
     * @custom:emits Withdrawn
     */
    function withdraw(uint64 amount) external {
        if (amount == 0) {
            revert InvalidWithdrawalAmount();
        }
        if (address(this).balance < amount) {
            revert InsufficientVaultBalance();
        }

        // Check that user has decrypted their available balance
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedAvailableBalance[msg.sender];
        uint64 available = decryptedWithExp.data;
        uint256 expTime = decryptedWithExp.exp;

        if (expTime == 0) {
            if (
                availableBalanceStatus[msg.sender] ==
                CommonStruct.DecryptStatus.PROCESSING
            ) {
                revert DecryptionProcessing();
            }
            revert MustDecryptFirst();
        }

        if (expTime < block.timestamp) {
            revert DecryptionCacheExpired();
        }

        // Check if user has enough available balance
        if (available < amount) {
            revert InsufficientAvailableBalance();
        }

        euint64 balance = encryptedBalances[msg.sender];
        euint64 withdrawAmount = FHE.asEuint64(amount);

        // Update balance
        encryptedBalances[msg.sender] = FHE.sub(balance, withdrawAmount);

        FHE.allowThis(encryptedBalances[msg.sender]);
        FHE.allow(encryptedBalances[msg.sender], msg.sender);

        // Only allow campaignContract if it's set
        if (campaignContract != address(0)) {
            FHE.allow(encryptedBalances[msg.sender], campaignContract);
        }

        // Reset cache
        decryptedAvailableBalance[msg.sender].data = 0;
        decryptedAvailableBalance[msg.sender].exp = 0;
        availableBalanceStatus[msg.sender] = CommonStruct.DecryptStatus.NONE;

        // Transfer ETH
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        if (!success) revert WithdrawalFailed();

        emit Withdrawn(msg.sender, amount);
    }

    /**
     * @notice Locks encrypted funds for a specific campaign
     * @dev Called exclusively by the campaign contract when a user contributes.
     * Operates entirely on encrypted values using FHE. If insufficient funds are available,
     * safely locks 0 instead of reverting. Invalidates cached available balance.
     * @param user The address of the contributor
     * @param campaignId The ID of the campaign
     * @param amount The encrypted amount to lock
     * @custom:emits FundsLocked
     */
    function lockFunds(
        address user,
        uint16 campaignId,
        euint64 amount
    ) external onlyCampaignContract {
        euint64 balance = encryptedBalances[user];

        if (!FHE.isInitialized(balance)) {
            revert UserHasNoBalance();
        }

        // Calculate available balance: balance - totalLocked
        euint64 available;
        euint64 locked = totalLocked[user];

        if (FHE.isInitialized(locked)) {
            available = FHE.sub(balance, locked);
        } else {
            available = balance;
        }

        FHE.allowThis(available);

        ebool sufficientFunds = FHE.ge(available, amount);
        FHE.allowThis(sufficientFunds);

        // If insufficient funds, lock 0; otherwise lock the requested amount
        euint64 safeAmount = FHE.select(
            sufficientFunds,
            amount,
            FHE.asEuint64(0)
        );

        FHE.allowThis(safeAmount);

        // Actually lock the funds
        euint64 existingLock = lockedAmounts[user][campaignId];
        if (FHE.isInitialized(existingLock)) {
            lockedAmounts[user][campaignId] = FHE.add(existingLock, safeAmount);
        } else {
            lockedAmounts[user][campaignId] = safeAmount;
        }

        // Update total locked
        if (FHE.isInitialized(locked)) {
            totalLocked[user] = FHE.add(locked, safeAmount);
        } else {
            totalLocked[user] = safeAmount;
        }

        // Grant permissions
        FHE.allowThis(lockedAmounts[user][campaignId]);
        FHE.allow(lockedAmounts[user][campaignId], campaignContract);
        FHE.allow(lockedAmounts[user][campaignId], user);


        FHE.allowThis(totalLocked[user]);
        FHE.allow(totalLocked[user], campaignContract);
        FHE.allow(totalLocked[user], user);

        // Invalidate cached available balance since locked amount changed
        delete decryptedAvailableBalance[user];
        availableBalanceStatus[user] = CommonStruct.DecryptStatus.NONE;

        emit FundsLocked(user, campaignId);
    }

    /**
     * @notice Unlocks funds previously locked for a campaign
     * @dev Called by the campaign contract when a campaign is cancelled or fails to reach
     * its target. Returns funds to the user's available balance without transferring ETH.
     * @param user The address of the contributor
     * @param campaignId The ID of the campaign
     * @custom:emits FundsUnlocked
     */
    function unlockFunds(
        address user,
        uint16 campaignId
    ) external onlyCampaignContract {
        euint64 lockedAmount = lockedAmounts[user][campaignId];
        if (!FHE.isInitialized(lockedAmount)) {
            revert NoLockedAmount();
        }

        // Decrease total locked
        totalLocked[user] = FHE.sub(totalLocked[user], lockedAmount);

        FHE.allowThis(totalLocked[user]);
        FHE.allow(totalLocked[user], user);
        FHE.allow(totalLocked[user], campaignContract);

        // Clear campaign lock
        lockedAmounts[user][campaignId] = FHE.asEuint64(0);

        FHE.allowThis(lockedAmounts[user][campaignId]);
        FHE.allow(lockedAmounts[user][campaignId], user);
        FHE.allow(lockedAmounts[user][campaignId], campaignContract);

        // Invalidate cached available balance since locked amount changed
        delete decryptedAvailableBalance[user];
        availableBalanceStatus[user] = CommonStruct.DecryptStatus.NONE;

        emit FundsUnlocked(user, campaignId);
    }

    /**
     * @notice Transfers locked funds from contributor to campaign owner
     * @dev Called by the campaign contract when a campaign succeeds. Moves encrypted funds
     * from the contributor's balance to the campaign owner's balance within the vault.
     * Does not transfer actual ETH - funds remain in the vault.
     * @param user The address of the contributor
     * @param campaignOwner The address of the campaign owner
     * @param campaignId The ID of the successful campaign
     * @return The encrypted locked amount that was transferred
     * @custom:emits FundsTransferred
     */
    function transferLockedFunds(
        address user,
        address campaignOwner,
        uint16 campaignId
    ) external onlyCampaignContract returns (euint64) {
        euint64 lockedAmount = lockedAmounts[user][campaignId];
        if (!FHE.isInitialized(lockedAmount)) {
            revert NoLockedAmount();
        }

        // Deduct from user's balance
        encryptedBalances[user] = FHE.sub(
            encryptedBalances[user],
            lockedAmount
        );

        FHE.allowThis(encryptedBalances[user]);
        FHE.allow(encryptedBalances[user], user);
        FHE.allow(encryptedBalances[user], campaignContract);

        // Decrease total locked
        totalLocked[user] = FHE.sub(totalLocked[user], lockedAmount);

        FHE.allowThis(totalLocked[user]);
        FHE.allow(totalLocked[user], user);
        FHE.allow(totalLocked[user], campaignContract);

        // Add to owner's balance
        euint64 ownerBalance = encryptedBalances[campaignOwner];
        if (FHE.isInitialized(ownerBalance)) {
            encryptedBalances[campaignOwner] = FHE.add(
                ownerBalance,
                lockedAmount
            );
        } else {
            encryptedBalances[campaignOwner] = lockedAmount;
        }

        // Grant permissions
        FHE.allowThis(encryptedBalances[campaignOwner]);
        FHE.allow(encryptedBalances[campaignOwner], campaignOwner);
        FHE.allow(encryptedBalances[campaignOwner], campaignContract);

        // Clear campaign lock
        euint64 returnAmount = lockedAmount;
        lockedAmounts[user][campaignId] = FHE.asEuint64(0);

        FHE.allowThis(lockedAmounts[user][campaignId]);
        FHE.allow(lockedAmounts[user][campaignId], user);
        FHE.allow(lockedAmounts[user][campaignId], campaignContract);

        // Invalidate cached available balance
        delete decryptedAvailableBalance[user];
        availableBalanceStatus[user] = CommonStruct.DecryptStatus.NONE;

        emit FundsTransferred(user, campaignOwner, campaignId);

        return returnAmount;
    }

    /**
     * @notice Gets the encrypted balance and locked amount for a user
     * @dev For user-side decryption. Returns both values so client can calculate available (balance - locked).
     * User must have been granted FHE permissions.
     * @return balance The encrypted total balance
     * @return locked The encrypted total locked amount
     */
    function getEncryptedBalanceAndLocked() external view returns (euint64 balance, euint64 locked) {
        return (encryptedBalances[msg.sender], totalLocked[msg.sender]);
    }

    /**
     * @notice Gets the encrypted total balance for a user
     * @dev For user-side decryption. User must have been granted FHE permissions.
     * @return The encrypted total balance
     */
    function getEncryptedBalance() external view returns (euint64) {
        return encryptedBalances[msg.sender];
    }

    /**
     * @notice Gets the encrypted total locked amount for a user
     * @dev For user-side decryption. User must have been granted FHE permissions.
     * @return The encrypted total locked amount
     */
    function getEncryptedTotalLocked() external view returns (euint64) {
        return totalLocked[msg.sender];
    }
}


// File contracts/ConfidentialFundraising.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;










/**
 * @title ConfidentialFundraising
 * @author cristhedev (https://github.com/cris-the-dev)
 * @notice A privacy-preserving crowdfunding platform using fully homomorphic encryption (FHE)
 * @dev This contract enables confidential fundraising campaigns where contribution amounts remain encrypted
 * on-chain. It leverages FHEVM to perform operations on encrypted data without revealing individual
 * contribution amounts. Only authorized parties can decrypt specific values after requesting decryption.
 *
 * Key Features:
 * - Encrypted contribution tracking using FHE
 * - Decentralized fund management through ShareVault
 * - Automatic token distribution for successful campaigns
 * - Refund mechanism for failed campaigns
 * - Time-based campaign deadlines
 *
 * @custom:security-contact tiennln.work@gmail.com
 *
 * Note: Contribution amounts and targets are stored in wei, not ether units
 */
contract ConfidentialFundraising is
    ZamaEthereumConfig,
    IFundraisingEvents,
    IFundraisingErrors,
    FundraisingStorage,
    DecryptionCallbacks
{
    using FHE for euint16;
    using FHE for euint64;
    using FHE for ebool;

    ShareVault public immutable shareVault;

    modifier onlyCampaignOwner(uint16 campaignId) {
        if (msg.sender != campaigns[campaignId].owner) {
            revert OnlyOwner();
        }
        _;
    }

    constructor(address _shareVault) {
        shareVault = ShareVault(_shareVault);
    }

    /**
     * @notice Creates a new fundraising campaign
     * @dev Initializes an encrypted total raised counter and sets campaign parameters.
     * The campaign owner can later finalize it after the deadline to distribute tokens or refunds.
     * @param title The campaign title (must not be empty)
     * @param description The campaign description
     * @param target The funding target amount in wei (must be greater than 0)
     * @param duration The campaign duration in seconds (must be greater than 0)
     * @return The newly created campaign ID
     * @custom:emits CampaignCreated
     */
    function createCampaign(
        string calldata title,
        string calldata description,
        uint64 target,
        uint256 duration
    ) external returns (uint256) {
        if (target == 0) {
            revert InvalidTarget();
        }
        if (duration == 0) {
            revert InvalidDuration();
        }
        if (bytes(title).length == 0) {
            revert EmptyTitle();
        }

        uint16 campaignId = campaignCount++;

        campaigns[campaignId] = FundraisingStruct.Campaign({
            owner: msg.sender,
            title: title,
            description: description,
            totalRaised: FHE.asEuint64(0),
            targetAmount: target,
            deadline: block.timestamp + duration,
            finalized: false,
            cancelled: false,
            tokenAddress: address(0)
        });

        FHE.allowThis(campaigns[campaignId].totalRaised);
        FHE.allow(campaigns[campaignId].totalRaised, address(shareVault));
        FHE.allow(campaigns[campaignId].totalRaised, msg.sender);

        emit CampaignCreated(
            campaignId,
            msg.sender,
            title,
            target,
            block.timestamp + duration
        );
        return campaignId;
    }

    /**
     * @notice Make an encrypted contribution to a campaign
     * @dev The contribution amount is encrypted and locked in the ShareVault. The actual amount
     * remains private on-chain and can only be decrypted by authorized parties. Funds are locked
     * until the campaign is finalized (either transferred to owner or refunded).
     * @param campaignId The ID of the campaign to contribute to
     * @param encryptedAmount The encrypted contribution amount (must be pre-encrypted by user)
     * @param inputProof Zero-knowledge proof validating the encrypted input
     * @custom:emits ContributionMade
     */
    function contribute(
        uint16 campaignId,
        externalEuint64 encryptedAmount,
        bytes calldata inputProof
    ) external {
        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        if (campaignId >= campaignCount) {
            revert CampaignNotExist();
        }

        if (block.timestamp > campaign.deadline) {
            revert CampaignEnded();
        }

        if (campaign.finalized) {
            revert AlreadyFinalized();
        }

        if (campaign.cancelled) {
            revert AlreadyCancelled();
        }

        euint64 amount = FHE.fromExternal(encryptedAmount, inputProof);

        FHE.allowThis(amount);
        FHE.allow(amount, address(shareVault));

        // Lock funds in ShareVault
        shareVault.lockFunds(msg.sender, campaignId, amount);

        // Track contributor
        if (!hasContributed[campaignId][msg.sender]) {
            campaignContributors[campaignId].push(msg.sender);
            hasContributed[campaignId][msg.sender] = true;
        }

        euint64 existingContribution = encryptedContributions[campaignId][
            msg.sender
        ];

        euint64 newContribution;
        if (FHE.isInitialized(existingContribution)) {
            newContribution = FHE.add(existingContribution, amount);
        } else {
            newContribution = amount;
        }

        encryptedContributions[campaignId][msg.sender] = newContribution;

        FHE.allowThis(newContribution);
        FHE.allow(newContribution, address(shareVault));
        FHE.allow(newContribution, msg.sender);

        euint64 newTotal = FHE.add(campaign.totalRaised, amount);
        campaign.totalRaised = newTotal;

        FHE.allowThis(newTotal);
        FHE.allow(newTotal, address(shareVault));
        FHE.allow(newTotal, campaign.owner);

        emit ContributionMade(campaignId, msg.sender);
    }

    /**
     * @notice Finalizes a campaign after its deadline has passed
     * @dev This function can only be called by the campaign owner after the deadline.
     * The owner must first call requestTotalRaisedDecryption() to decrypt the total amount raised.
     * If the target is reached, a new ERC20 token is deployed and funds are transferred to the owner.
     * If the target is not reached, all locked funds are unlocked for contributor withdrawal.
     * @param campaignId The ID of the campaign to finalize
     * @param tokenName The name for the campaign token (required if target reached, can be empty otherwise)
     * @param tokenSymbol The symbol for the campaign token (required if target reached, can be empty otherwise)
     * @custom:emits CampaignFinalized
     * @custom:emits CampaignFailed (if target not reached)
     */
    function finalizeCampaign(
        uint16 campaignId,
        string calldata tokenName,
        string calldata tokenSymbol
    ) external onlyCampaignOwner(campaignId) {
        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        if (campaignId >= campaignCount) {
            revert CampaignNotExist();
        }

        if (block.timestamp < campaign.deadline) {
            revert CampaignStillActive();
        }

        if (campaign.finalized) {
            revert AlreadyFinalized();
        }

        if (campaign.cancelled) {
            revert AlreadyCancelled();
        }

        // Check if target was reached (need to decrypt total first)
        // Owner must call requestTotalRaisedDecryption first, then call this function
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedTotalRaised[campaignId];
        uint64 totalRaised = decryptedWithExp.data;

        if (totalRaised == 0) {
            revert TotalRaisedNotDecrypted();
        }

        campaign.finalized = true;

        if (totalRaised >= campaign.targetAmount) {
            // TARGET REACHED - Deploy token and transfer funds
            if (bytes(tokenName).length == 0) {
                revert TokenNameRequired();
            }
            if (bytes(tokenSymbol).length == 0) {
                revert TokenSymbolRequired();
            }

            // Deploy campaign token
            CampaignToken token = new CampaignToken(
                tokenName,
                tokenSymbol,
                campaignId,
                address(this) // Campaign contract is token owner
            );
            campaign.tokenAddress = address(token);

            // Transfer all locked funds to owner
            address[] memory contributors = campaignContributors[campaignId];
            for (uint256 i = 0; i < contributors.length; i++) {
                address contributor = contributors[i];
                shareVault.transferLockedFunds(
                    contributor,
                    campaign.owner,
                    campaignId
                );
            }

            emit CampaignFinalized(campaignId, true);
        } else {
            // TARGET NOT REACHED - Unlock all funds (campaign failed)
            address[] memory contributors = campaignContributors[campaignId];
            for (uint256 i = 0; i < contributors.length; i++) {
                shareVault.unlockFunds(contributors[i], campaignId);
            }

            emit CampaignFailed(campaignId);
            emit CampaignFinalized(campaignId, false);
        }
    }

    /**
     * @notice Cancels an active campaign before its deadline
     * @dev Only the campaign owner can cancel. This immediately unlocks all contributor funds
     * and prevents any further contributions. The campaign cannot be finalized after cancellation.
     * @param campaignId The ID of the campaign to cancel
     * @custom:emits CampaignCancelled
     */
    function cancelCampaign(
        uint16 campaignId
    ) external onlyCampaignOwner(campaignId) {
        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        if (campaignId >= campaignCount) {
            revert CampaignNotExist();
        }

        if (campaign.finalized) {
            revert AlreadyFinalized();
        }

        if (campaign.cancelled) {
            revert AlreadyCancelled();
        }

        campaign.cancelled = true;

        // Unlock all funds
        address[] memory contributors = campaignContributors[campaignId];
        for (uint256 i = 0; i < contributors.length; i++) {
            shareVault.unlockFunds(contributors[i], campaignId);
        }

        emit CampaignCancelled(campaignId);
    }

    /**
     * @notice Claims campaign tokens for a contributor after successful campaign finalization
     * @dev Contributors must first decrypt their contribution amount by calling requestMyContributionDecryption().
     * Tokens are distributed proportionally based on contribution amount relative to the target amount.
     * Each contributor can only claim once.
     * @param campaignId The ID of the successful campaign
     * @custom:emits TokensClaimed
     * @custom:emits TokensDistributed
     */
    function claimTokens(uint16 campaignId) external {
        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        if (campaignId >= campaignCount) {
            revert CampaignNotExist();
        }

        if (!campaign.finalized) {
            revert CampaignNotFinalized();
        }

        if (campaign.tokenAddress == address(0)) {
            revert NoTokensToClaim();
        }

        if (hasClaimed[campaignId][msg.sender]) {
            revert AlreadyClaimed();
        }

        // User must have decrypted their contribution first
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedContributions[campaignId][
                msg.sender
            ];
        uint64 contributionAmount = decryptedWithExp.data;

        if (contributionAmount == 0) {
            revert ContributionNotDecrypted();
        }

        // Calculate tokens based on proportion of target
        // Formula: (userContribution / targetAmount) * 1_000_000_000 tokens
        // To avoid precision loss: (userContribution * 1_000_000_000) / targetAmount

        uint256 TOKEN_SUPPLY = 1_000_000_000 * 10 ** 18; // 1 billion tokens with 18 decimals
        uint256 tokenAmount = (uint256(contributionAmount) * TOKEN_SUPPLY) /
            uint256(campaign.targetAmount);

        CampaignToken token = CampaignToken(campaign.tokenAddress);
        token.mint(msg.sender, tokenAmount);

        hasClaimed[campaignId][msg.sender] = true;

        emit TokensClaimed(campaignId, msg.sender);
        emit TokensDistributed(campaignId, msg.sender, tokenAmount);
    }

    /**
     * @notice Retrieves public campaign information
     * @dev Returns non-sensitive campaign data. Encrypted contribution amounts are not included.
     * @param campaignId The ID of the campaign
     * @return owner The address of the campaign creator
     * @return title The campaign title
     * @return description The campaign description
     * @return targetAmount The funding target in wei
     * @return deadline The campaign deadline timestamp
     * @return finalized Whether the campaign has been finalized
     * @return cancelled Whether the campaign has been cancelled
     */
    function getCampaign(
        uint16 campaignId
    )
        external
        view
        returns (
            address owner,
            string memory title,
            string memory description,
            uint64 targetAmount,
            uint256 deadline,
            bool finalized,
            bool cancelled,
            address tokenAddress
        )
    {
        if (campaignId >= campaignCount) {
            revert CampaignNotExist();
        }
        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        return (
            campaign.owner,
            campaign.title,
            campaign.description,
            campaign.targetAmount,
            campaign.deadline,
            campaign.finalized,
            campaign.cancelled,
            campaign.tokenAddress
        );
    }

    /**
     * @notice Marks the caller's contribution as publicly decryptable (v0.9 self-relaying)
     * @dev After calling this, use the frontend relayer SDK's publicDecrypt() to get cleartext + proof,
     * then call submitMyContributionDecryption() with the results to cache the decrypted value.
     * @param campaignId The ID of the campaign
     */
    function requestMyContributionDecryption(uint16 campaignId) public {
        euint64 userContribution = encryptedContributions[campaignId][
            msg.sender
        ];
        if (!FHE.isInitialized(userContribution)) {
            revert ContributionNotFound();
        }

        if (
            decryptMyContributionStatus[campaignId][msg.sender] ==
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        // Mark as publicly decryptable (v0.9 pattern)
        FHE.makePubliclyDecryptable(userContribution);

        decryptMyContributionStatus[campaignId][msg.sender] = CommonStruct
            .DecryptStatus
            .PROCESSING;
    }

    /**
     * @notice Submits and verifies the decrypted contribution amount (v0.9 self-relaying)
     * @dev Called by the user after obtaining cleartext + proof via publicDecrypt() from the relayer SDK.
     * Verifies the proof and caches the decrypted value.
     * @param campaignId The ID of the campaign
     * @param cleartextAmount The decrypted contribution amount (obtained from publicDecrypt)
     * @param proof The cryptographic proof (obtained from publicDecrypt)
     */
    function submitMyContributionDecryption(
        uint16 campaignId,
        uint64 cleartextAmount,
        bytes calldata proof
    ) public {
        euint64 userContribution = encryptedContributions[campaignId][
            msg.sender
        ];
        if (!FHE.isInitialized(userContribution)) {
            revert ContributionNotFound();
        }

        if (
            decryptMyContributionStatus[campaignId][msg.sender] !=
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        // Verify the decryption proof
        bytes32[] memory handles = new bytes32[](1);
        handles[0] = FHE.toBytes32(userContribution);
        bytes memory cleartexts = abi.encode(cleartextAmount);
        FHE.checkSignatures(handles, cleartexts, proof);

        // Cache the decrypted value
        decryptedContributions[campaignId][msg.sender] = CommonStruct
            .Uint64ResultWithExp({
                data: cleartextAmount,
                exp: block.timestamp + cacheTimeout
            });

        decryptMyContributionStatus[campaignId][msg.sender] = CommonStruct
            .DecryptStatus
            .DECRYPTED;
    }

    /**
     * @notice Retrieves the caller's decrypted contribution amount
     * @dev The contribution must be decrypted first by calling requestMyContributionDecryption().
     * The decrypted value is cached with an expiration time.
     * @param campaignId The ID of the campaign
     * @return The decrypted contribution amount in wei
     */
    function getMyContribution(
        uint16 campaignId
    ) external view returns (uint64) {
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedContributions[campaignId][
                msg.sender
            ];

        uint64 decryptedContribution = decryptedWithExp.data;
        uint256 expTime = decryptedWithExp.exp;

        if (decryptedContribution != 0) {
            if (expTime < block.timestamp) {
                revert CacheExpired();
            }
            return decryptedContribution;
        }

        if (
            decryptMyContributionStatus[campaignId][msg.sender] ==
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DataProcessing();
        }

        revert MyContributionNotDecrypted();
    }

    /**
     * @notice Marks the campaign's total raised as publicly decryptable (v0.9 self-relaying)
     * @dev Only the campaign owner can request this. After calling this, use the frontend relayer SDK's
     * publicDecrypt() to get cleartext + proof, then call submitTotalRaisedDecryption() with the results.
     * @param campaignId The ID of the campaign
     */
    function requestTotalRaisedDecryption(
        uint16 campaignId
    ) public onlyCampaignOwner(campaignId) {
        if (
            decryptTotalRaisedStatus[campaignId] ==
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        // Mark as publicly decryptable (v0.9 pattern)
        FHE.makePubliclyDecryptable(campaign.totalRaised);

        decryptTotalRaisedStatus[campaignId] = CommonStruct
            .DecryptStatus
            .PROCESSING;
    }

    /**
     * @notice Submits and verifies the decrypted total raised amount (v0.9 self-relaying)
     * @dev Called by the campaign owner after obtaining cleartext + proof via publicDecrypt().
     * Verifies the proof and caches the decrypted value.
     * @param campaignId The ID of the campaign
     * @param cleartextTotal The decrypted total raised amount (obtained from publicDecrypt)
     * @param proof The cryptographic proof (obtained from publicDecrypt)
     */
    function submitTotalRaisedDecryption(
        uint16 campaignId,
        uint64 cleartextTotal,
        bytes calldata proof
    ) public onlyCampaignOwner(campaignId) {
        if (
            decryptTotalRaisedStatus[campaignId] !=
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DecryptAlreadyInProgress();
        }

        FundraisingStruct.Campaign storage campaign = campaigns[campaignId];

        // Verify the decryption proof
        bytes32[] memory handles = new bytes32[](1);
        handles[0] = FHE.toBytes32(campaign.totalRaised);
        bytes memory cleartexts = abi.encode(cleartextTotal);
        FHE.checkSignatures(handles, cleartexts, proof);

        // Cache the decrypted value
        decryptedTotalRaised[campaignId] = CommonStruct.Uint64ResultWithExp({
            data: cleartextTotal,
            exp: block.timestamp + cacheTimeout
        });

        decryptTotalRaisedStatus[campaignId] = CommonStruct
            .DecryptStatus
            .DECRYPTED;
    }

    /**
     * @notice Retrieves the decrypted total amount raised for a campaign
     * @dev Only the campaign owner can call this. The total must be decrypted first by calling
     * requestTotalRaisedDecryption(). The decrypted value is cached with an expiration time.
     * @param campaignId The ID of the campaign
     * @return The decrypted total amount raised in wei
     */
    function getTotalRaised(
        uint16 campaignId
    ) external view onlyCampaignOwner(campaignId) returns (uint64) {
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedTotalRaised[campaignId];

        uint64 decryptedTotalRaised = decryptedWithExp.data;
        uint256 expTime = decryptedWithExp.exp;

        if (decryptedTotalRaised != 0) {
            if (expTime < block.timestamp) {
                revert CacheExpired();
            }
            return decryptedTotalRaised;
        }

        if (
            decryptTotalRaisedStatus[campaignId] ==
            CommonStruct.DecryptStatus.PROCESSING
        ) {
            revert DataProcessing();
        }

        revert TotalRaisedNotDecrypted();
    }

    /**
     * @notice Get the decryption status and cached total raised for a campaign
     * @param campaignId The campaign ID
     * @return status The decryption status (0=NONE, 1=PROCESSING, 2=DECRYPTED)
     * @return totalRaised The decrypted total raised (0 if not decrypted)
     * @return cacheExpiry The cache expiry timestamp
     */
    function getTotalRaisedStatus(
        uint16 campaignId
    )
        external
        view
        onlyCampaignOwner(campaignId)
        returns (
            CommonStruct.DecryptStatus status,
            uint64 totalRaised,
            uint256 cacheExpiry
        )
    {
        status = decryptTotalRaisedStatus[campaignId];
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedTotalRaised[campaignId];

        totalRaised = decryptedWithExp.data;
        cacheExpiry = decryptedWithExp.exp;

        return (status, totalRaised, cacheExpiry);
    }

    /**
     * @notice Get the decryption status and cached contribution for a user
     * @param campaignId The campaign ID
     * @param user The user address
     * @return status The decryption status (0=NONE, 1=PROCESSING, 2=DECRYPTED)
     * @return contribution The decrypted contribution (0 if not decrypted)
     * @return cacheExpiry The cache expiry timestamp
     */
    function getContributionStatus(
        uint16 campaignId,
        address user
    )
        external
        view
        returns (
            CommonStruct.DecryptStatus status,
            uint64 contribution,
            uint256 cacheExpiry
        )
    {
        status = decryptMyContributionStatus[campaignId][user];
        CommonStruct.Uint64ResultWithExp
            memory decryptedWithExp = decryptedContributions[campaignId][user];

        contribution = decryptedWithExp.data;
        cacheExpiry = decryptedWithExp.exp;

        return (status, contribution, cacheExpiry);
    }

    /**
     * @notice Check if user has any contribution to a campaign
     * @param campaignId The campaign ID
     * @param user The user address
     * @return hasContribution True if user has contributed
     */
    function hasContribution(
        uint16 campaignId,
        address user
    ) external view returns (bool) {
        return FHE.isInitialized(encryptedContributions[campaignId][user]);
    }

    /**
     * @notice Retrieves the list of all contributors to a campaign
     * @dev Returns addresses of all users who have made at least one contribution.
     * Does not reveal contribution amounts.
     * @param campaignId The ID of the campaign
     * @return Array of contributor addresses
     */
    function getCampaignContributors(
        uint16 campaignId
    ) external view returns (address[] memory) {
        return campaignContributors[campaignId];
    }

    /**
     * @notice Gets the encrypted contribution amount for a user in a campaign
     * @dev For user-side decryption. User must have been granted FHE permissions.
     * @param campaignId The ID of the campaign
     * @param user The address of the contributor
     * @return The encrypted contribution amount
     */
    function getEncryptedContribution(
        uint16 campaignId,
        address user
    ) external view returns (euint64) {
        return encryptedContributions[campaignId][user];
    }

    /**
     * @notice Gets the encrypted total raised for a campaign
     * @dev For user-side decryption. Campaign owner must have been granted FHE permissions.
     * @param campaignId The ID of the campaign
     * @return The encrypted total raised amount
     */
    function getEncryptedTotalRaised(
        uint16 campaignId
    ) external view returns (euint64) {
        FundraisingStruct.Campaign memory campaign = campaigns[campaignId];

        return campaign.totalRaised;
    }
}
