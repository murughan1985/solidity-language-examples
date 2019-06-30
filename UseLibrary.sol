pragma solidity >=0.4.25 <0.6.0;

import "browser/CalculatorLibrary.sol";

contract UseLibrary {
    using Calculator for uint;
    
    function Add(uint a, uint b) public pure returns (uint) {
        return Calculator.Add(a,b);
    }
}