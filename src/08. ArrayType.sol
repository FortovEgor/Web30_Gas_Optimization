// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ArrayType {
    uint256[] array;

    function initArray() public {
        for (uint256 i; i < 200; ++i) {
            array.push(i);
        }
    }
}


contract ArrayTypeOptimized {
    uint256[] array;

    function initArray() public {
        array = new uint256[](200);  // pre-allocation of the array
        for (uint256 i = 0; i < 200; i++) {
            array[i] = i;
        }
    }
}