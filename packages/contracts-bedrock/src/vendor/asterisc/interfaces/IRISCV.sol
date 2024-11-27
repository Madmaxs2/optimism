// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ISemver } from "src/universal/interfaces/ISemver.sol";
import { IPreimageOracle } from "src/cannon/interfaces/IPreimageOracle.sol";

/// @title IRISCV
/// @notice Interface for the RISCV contract.
interface IRISCV is ISemver {
    function oracle() external view returns (IPreimageOracle);
    function step(bytes memory _stateData, bytes memory _proof, bytes32 _localContext) external returns (bytes32);

    function __constructor__(IPreimageOracle _oracle) external;
}
