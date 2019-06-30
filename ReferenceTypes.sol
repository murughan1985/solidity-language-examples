pragma solidity ^0.5.1;

contract ReferenceTypes
{
    //Array
    uint[5] fixedNumbers;
    uint[] dynamicNumbers = [1,2,3,4,5];

    function arrays() public returns(uint, uint)
    {
        dynamicNumbers.push(6);
        return ( fixedNumbers.length, dynamicNumbers[3]);
    }

    //String
    string name = "Murughan";
    string country = 'India';

    //Struct
    struct Funder {
        address addr;
        uint amount;
    }

    Funder funder = Funder(msg.sender, 10);

    //Mapping
    mapping (uint => address) accounts;
    uint counter;

    function addAccounts(address account) public returns (uint)
    {
        counter++;
        accounts[counter] = account;
        return counter;
    }
   
   function getAccounts(uint id) public view returns (address)
    {
      return accounts[id];
    }
}
