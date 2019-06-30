pragma solidity >=0.4.25 <0.6.0;

//Base Contract
contract AbstractContract {
    uint private value = 10;
    function SetValue(uint input) public;
    function GetValue() public view returns (uint) {
        return value;
    }
}

//Child Contract inherits Base Contract
contract Child is AbstractContract {
  uint private value;

  function SetValue(uint input) public {
   value = input;
  }

}

//Intiatilizing Child contract
contract Client {
  AbstractContract abstractContract;

  constructor() public {
    abstractContract = new Child();
  }

  function callInheritedFunctions() public returns (uint) {
      abstractContract.SetValue(10);
      return abstractContract.GetValue();//Output - 10
    }
}
