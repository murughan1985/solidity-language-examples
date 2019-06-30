pragma solidity >=0.4.25 <0.6.0;

contract ConditionalStatements
{
    function Eligibility(int age) public pure returns(string memory) {

        if (age < 21) 
            return "Not Eligible";  

        else if(age >= 21 && age <= 60)
            return "Eligible";

        else
           return "Not Eligible";
    }

}