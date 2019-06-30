pragma solidity >=0.4.25 <0.6.0;

library Calculator {
 
  function Add(uint a, uint b) public pure returns (uint) {
      return a + b;
  }
  function Subtract(uint a, uint b) public pure returns (uint) {
      return a - b;
  }

}
