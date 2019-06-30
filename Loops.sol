pragma solidity >=0.4.25 <0.6.0;

contract Loops
{
    uint private counter = 2;
    uint private index = 0;
    mapping (uint => uint) numbers;
}

    //While Loop
    function WhileLoop() public {

       while (index < counter) {
           index++;
       }
    }

    //Do While loop
    function DoWhileLoop() public {

       do {
           index++;
       } while (index < counter);
    }

    //For Loop
    function ForLoop() public {
    for (index = 0; index < counter; index++) {
            numbers[index] = counter;
        }
    }

    //Break
    function Break() public {
    for (index = 0; index < counter; index++) {
        if (index == 1)
            break;
        numbers[index] = counter;
        }
    }

    //Continue
    function Continue() public {
    for (index = 0;index < counter; index++) {
        if (index > 1)
            continue;
        numbers[index] = counter;
        }
    }

}