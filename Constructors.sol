pragma solidity >=0.4.25 <0.6.0;

contract Constructor
{
    string private accountName;
    address payable private owner;

    constructor(string memory name) public {
        accountName = name;
        owner = msg.sender;
    }
}
