pragma solidity >=0.4.25 <0.6.0;

//Parent contract
contract Parent {
  uint internal value;

  function SetValue(uint input) public {
    value = input;
  }
}

//Inherit parent contract
contract Child is Parent {
  bool private isValid;
 
  function GetValue() public view returns (uint) {
    return value;
  }
}

//Parent contract 2
contract Parent2 {
  bool internal eligible;
 
}

//Multiple inheritance
contract Derived is Parent2, Parent {
  bool private isValid;

  function GetValue() public view returns (uint) {
    return value;
  }
}

contract Client {
  Child child = new Child();
  
  function callInheritedFunctions() public returns (uint) {
      //Invoke Parent contract
      child.SetValue(10);
      //Invoke Child contract
      return child.GetValue();
     }
}