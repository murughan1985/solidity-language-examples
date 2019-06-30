pragma solidity >=0.4.25 <0.6.0;

contract FunctionModifier {
 
    address payable owner;

    //Constructor for intialization
    constructor() public
    {
        //Get account address
        owner = msg.sender;
    }
   
    //Modifer verifies whether the sender is the owner or not
    modifier onlyOwner
    {
        if(msg.sender == owner) {
            _;
        }
    }

    function Close() public onlyOwner
    {
        //Below statement will be executed only if the user is owner.
        selfdestruct(owner);
    }
}
