pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MyToken70F9E92D is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MyToken70F9E92D(address _owner)  UpgradeableToken(_owner) {
    name = "MyToken70F9E92D";
    symbol = "ELBIT";
    totalSupply = 7700000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}