// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Wallet is Ownable {
    event ReceiveEther(address indexed _sender, uint256 _value);
    event Pay(address indexed _sender, uint256 _value);

    receive() external payable {
        emit ReceiveEther(msg.sender, msg.value);
    }

    function pay(address payable _beneficiary) public onlyOwner {
        uint256 amount = address(this).balance;
        _beneficiary.transfer(amount);
        emit Pay(_beneficiary, amount);
    }
}
