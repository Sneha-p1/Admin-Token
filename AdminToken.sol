// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "ClassWork/ERC20.sol";

contract AdminT is ERC20{
    address admin;

    constructor()ERC20("AdminT","AT"){
        _mint(msg.sender, 100000000000000000000);
        admin = msg.sender;
    }
modifier onlyAdmin{
    require(msg.sender==admin,"Unauthorized error");
    _;
}

    function safeMint(address to, uint value) public onlyAdmin {
        _mint(to, value);

    }


}