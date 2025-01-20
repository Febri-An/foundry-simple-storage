// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() external {
        DeploySimpleStorage deploySimpleStorage = new DeploySimpleStorage();
        simpleStorage = deploySimpleStorage.run();
    }

    function testStore() public {
        simpleStorage.store(10);
        uint256 storedValue = simpleStorage.retrieve();
        assertEq(storedValue, 10);
    }

    function testAddPerson() public {
        simpleStorage.addPerson("Alice", 10);
        uint256 favoriteNumber = simpleStorage.nameToFavoriteNumber("Alice");
        assertEq(favoriteNumber, 10);
    }

    function testListOfPeople() public {
        // add people
        simpleStorage.addPerson("Alice", 10);
        simpleStorage.addPerson("Bob", 20);
        simpleStorage.addPerson("Charlie", 30);

        // get list of people
        (uint256 favoriteNumber1, string memory name1) = simpleStorage.listOfPeople(0);
        (uint256 favoriteNumber2, string memory name2) = simpleStorage.listOfPeople(1);
        (uint256 favoriteNumber3, string memory name3) = simpleStorage.listOfPeople(2);

        // check favorite numbers
        assertEq(favoriteNumber1, 10);
        assertEq(favoriteNumber2, 20);
        assertEq(favoriteNumber3, 30);

        // check names
        assertEq(name1, "Alice");
        assertEq(name2, "Bob");
        assertEq(name3, "Charlie");
    }
}
