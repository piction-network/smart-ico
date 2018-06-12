pragma solidity ^0.4.23;

import "contracts/utils/Ownable.sol";

/**
 * @title ProductBasic
 * @dev Simpler version of Product interface
 */
contract Product is Ownable {

    string public name;
    uint256 public maxcap;
    uint256 public weiRaised;
    uint256 public exceed;
    uint256 public minimum;
    uint256 public rate;

    constructor (
        string _name,
        uint256 _maxcap,
        uint256 _exceed,
        uint256 _minimum,
        uint256 _rate
    ) public {
        require(_maxcap > _minimum);

        name = _name;
        maxcap = _maxcap;
        exceed = _exceed;
        minimum = _minimum;
        rate = _rate;
    }

    function setWeiRaised(uint256 _weiRaised) public onlyOwner {
        require(weiRaised <= _weiRaised);

        weiRaised = _weiRaised;
    }
}