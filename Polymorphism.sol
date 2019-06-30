pragma solidity >=0.4.16 < 0.6.0;

contract Polymorphism {

    function Details(uint age) public pure returns(uint) {
        return age;
    }

    function Details(uint age, string memory name) public pure returns(uint, string memory) {
        return (age, name);
    }
}