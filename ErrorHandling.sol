pragma solidity >=0.4.25 <0.6.0;

contract ErrorHandling {

}
    function Assert() public pure {
        assert(10 == 20);
    }
    
    function Require() public pure {
        require(10 > 20);
    }
    
    function Revert() public pure {
        revert();
    }    
}