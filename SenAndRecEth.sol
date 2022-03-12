// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.5.0 < 0.8.10
contract RecEther {
    receive() external payable{} //msg.data is empty
fallback() external payable{} // msg.data is not empty
function getBalance() public view returns (uint) {
    return address(this).balance;
}
}
contract SenEther{
    function sendViaCall(address payable _to) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "failed to send ether")
    }
}
