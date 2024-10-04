// SPDX-Liensce-Identifier: MIT
pragma solidity ^0.8.27;

import { TimelockController } from "@openzeppelin/contracts/governance/TimeLockController.sol";

contract TimeLock is TimelockController {
  /*
    * @param minDelay The minimum time a proposal can be active for before it can be executed.
    * @param proposers The list of addresses that can propose
    * @param executors The list of addresses that can execute
  */
  constructor(uint256 minDelay, address[] memory proposers, address[] memory executors) TimelockController(minDelay, proposers, executors, msg.sender) {}
}
