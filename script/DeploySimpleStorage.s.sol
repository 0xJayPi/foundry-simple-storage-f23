// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol"; // Forge Standard Library, inherit Script functionality
import {SimpleStorage} from "../src/SimpleStorage.sol"; // import the contract we want to deploy

contract DeploySimpleStorage is Script {
    // main function that is going to call when we deploy our contract
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // keyboard from Script, foundry cheatcode. Everything we want to deploy goes in between
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast(); // keyboard from Script, foundry cheatcode
        return simpleStorage;
    }
}
