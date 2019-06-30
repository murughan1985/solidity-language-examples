pragma solidity >=0.4.25 <0.6.0;

//Base class interface
interface IBase {
    function SetValue(uint input) external;
    function GetValue() external view returns (uint);
}

//Must implement all the interface functions
contract Child is IBase {
  uint private value;

  function SetValue(uint input) public {
   value = input;
  }

   function GetValue() public view returns (uint){
   return value;
  }

}

contract Client {
  IBase obj;

  constructor() public {
    obj = new Child();
  }

  function callInheritedFunctions() public returns (uint) {
      obj.SetValue(10);
      return obj.GetValue();
    }
}
