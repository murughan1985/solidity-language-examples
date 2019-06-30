pragma solidity >=0.4.25 <0.6.0;

contract ValueTypes
{
    //Boolean
    bool isTrue = false;

    function getBooleanVariable() public view returns (bool)
    {
        return isTrue;
    }

    //Signed Integers
    int item4 = -1;
    int item5 = -6535;

    function getInt() public view returns (int)
    {
        return item5;
    }

    //Unsigned Integers
    uint item = 5;
    uint8 item2 = 255;
    uint16 item3 = 65535;

    function getUInt() public returns (uint, uint8, uint16)
    {
        item = 20;
        return (item, item2, item3);
    }

    //Address
    address owner;
    address payable owner2;

    function getAddress() public returns (address)
    {
        owner = msg.sender; //Assign user address to owner variable
        return owner;
    }
    
    function transferEther() public
    {
        if (owner2.balance < 30 && owner.balance >= 30)
        {
            owner2.transfer(30);
        }
    }

    //Bytes
    function getBytes() public pure returns (bytes1, uint)
    {
      bytes1 byteVar = 0x65;
      uint itemInt;

      assembly {
    itemInt := byte(0, byteVar)
        }
      return (byteVar, itemInt);
    }

    //Enums
    enum gender {male, female, others}

    function getEnums() public pure returns(gender)
    {
        return gender.female;
    }

}