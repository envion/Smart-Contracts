pragma solidity ^0.4.15;

/**
 * @title Safe math operations that throw error on overflow.
 *
 * Credit: Taking ideas from FirstBlood token
 */
library SafeMath {

    /** 
     * @dev Safely add two numbers.
     *
     * @param x First operant.
     * @param y Second operant.
     * @return The result of x+y.
     */
    function add(uint256 x, uint256 y)
    internal constant
    returns(uint256) {
        uint256 z = x + y;
        assert((z >= x) && (z >= y));
        return z;
    }

    /** 
     * @dev Safely substract two numbers.
     *
     * @param x First operant.
     * @param y Second operant.
     * @return The result of x-y.
     */
    function sub(uint256 x, uint256 y)
    internal constant
    returns(uint256) {
        assert(x >= y);
        uint256 z = x - y;
        return z;
    }

    /** 
     * @dev Safely multiply two numbers.
     *
     * @param x First operant.
     * @param y Second operant.
     * @return The result of x*y.
     */
    function mul(uint256 x, uint256 y)
    internal constant
    returns(uint256) {
        uint256 z = x * y;
        assert((x == 0) || (z/x == y));
        return z;
    }

    /**
    * @dev Parse a floating point number from String to uint, e.g. "250.56" to "25056"
     */
    function parse(string s) 
    internal constant 
    returns (uint256) 
    {
    bytes memory b = bytes(s);
    uint result = 0;
    for (uint i = 0; i < b.length; i++) {
        if (b[i] >= 48 && b[i] <= 57) {
            result = result * 10 + (uint(b[i]) - 48); 
        }
    }
    return result; 
}
}
