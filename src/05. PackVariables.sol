// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract PackVariables {
    uint8 one;
    uint256 two;
    bytes18 three;
    uint8[30] four;
    bytes14 five;
    uint8 six;

    function setValues(uint8 _one, uint256 _two, bytes18 _three, uint8[30] calldata _four, bytes14 _five, uint8 _six)
        public
    {
        one = _one;
        two = _two;
        three = _three;
        four = _four;
        five = _five;
        six = _six;
    }
}

contract PackVariablesOptimized {
  struct Data {
    uint8 one;
    uint256 two;
    bytes18 three;
    uint8[30] four;
    bytes14 five;
    uint8 six;
  }

  Data public data;

  function setValues(uint8 _one, uint256 _two, bytes18 _three, uint8[30] calldata _four, bytes14 _five, uint8 _six) public {
    data = Data(_one, _two, _three, _four, _five, _six);
  }
}
