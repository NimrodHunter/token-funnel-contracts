pragma solidity ^0.4.11;

/*
Token Funnel Standard
*/
contract TokenFunnelInterface {

  /*
  token to be transferred.
  */
  address public token;
  /*
  root address.
  */
  address public root;
  /*
  leaf address array.
  */
  address[] public leaf;
  /*
  amount of tokens by address.
  */
  mapping (address => uint256) balances;
  /*
  this contract transfer the _amount of tokens to itself,
  previously approved by msg.sender
  */
  function deposit(uint256 _amount);
  /*
  this contract transfer the _amount of tokens to msg.sender.
  */
  function withdraw(uint256 _amount);
  /*
  move _amount balance, from leafs to root
  */
  function focus(uint256 _amount);
  /*
  move _amount balance, from root to leafs
  */
  function spread(uint256 _amount);

  //trigger when msg.sender deposit tokens
  event Deposit(uint256 _amount);
  //trigger when msg.sender withdraw tokens
  event Withdraw(uint256 _amount);
  //trigger when msg.sender active focus.
  event Focus(uint256 _amount);
  //trigger when msg.sender active spread.
  event Spread(uint256 _amount);
}
