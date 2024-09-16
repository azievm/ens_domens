//SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract ENS {

    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    struct ensAddress {
        address addressUser;
        uint timestamp;
        uint price;
    }

    mapping(string => ensAddress) public domens;

    function buyDomen(string memory _nameDomen) public payable {
        require(msg.value >= 1 * 10**18, "There must be more than 1 ether");

        domens[_nameDomen] = ensAddress({
            addressUser: msg.sender,
            timestamp: block.timestamp,
            price: msg.value
        });
    }

    function getDomen(string memory _nameDomen) view public returns(address) {
        return domens[_nameDomen].addressUser;
    }

    function withdrawAll() public {
        require(msg.sender == owner, "You are not owner");

        owner.transfer(address(this).balance);
    }
 
}