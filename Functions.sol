pragma solidity >=0.4.25 <0.6.0;

contract Functions
{
    //View function type
    string private message = "Welcome to Blockchain on AWS";
    function ViewFunctionType() public view returns(string memory)
    {
        return message;
    }

    //Pure
    function PureFunctionType() public pure returns(string memory)
    {
        return "Welcome to Blockchain on AWS";
    }

    //Payable
    function GetBalance() public payable returns(uint) {
       return msg.sender.balance;
    }
}

//Calling a function from different contract
contract Caller 
{
    Functions func = new Functions();
    
    function functionCall() public view returns (string memory) {
        return func.ViewFunctionType();
    }
    
}