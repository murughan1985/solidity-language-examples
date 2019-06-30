pragma solidity >=0.4.25 <0.6.0;

contract EventsAndLogging {
    
    event LogSenderAddress(address);
        
    address private owner;
           
    constructor() public {
        owner = msg.sender;
    }
    
    function () payable external {
        emit LogSenderAddress(msg.sender);
    }
}
