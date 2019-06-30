pragma solidity >=0.4.25 <0.6.0;

contract Welcome
{
    string private message = "Welcome to Blockchain on AWS";
    function WelcomeMessage() public view returns (string memory){
        return message;
    }
}   