// SPDX-License-Identifier: MIT

// an ER20 token is a token, like BTC or ETH, except it runs on the etherum chain

pragma solidity ^0.8.7;


interface ER20Interface {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address recipent, uint256 amount) external returns(bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipent, uint256 amount) external returns (bool);
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract myToken is ER20Interface {
    
    string public symbol;
    string public name;
    uint8 public decimals;
    uint public _totalSupply;
    address public tokenOwner;
    
    mapping(address => uint) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    
    constructor() public {
        tokenOwner = msg.sender;
        symbol = "ECC";
        name = "Eoin connolly fixed supply token";
        decimals = 18;
        _totalSupply = 1000000 * 10**uint(decimals);
        _balances[tokenOwner] = _totalSupply;
        
        emit Transfer(address(0), tokenOwner, _totalSupply);
    }
    
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }
    
    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }
    
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }
    
    function transfer(address recipent, uint256 amount) public virtual override returns (bool) {
        address sender = msg.sender;
        _balances[sender] = _balances[sender] - amount;
        _balances[recipent] = _balances[recipent] + amount;
        
        emit Transfer(sender, recipent, amount);
        return true;
    }
    
    function approve(address sender, uint256 amount) public virtual override returns (bool) {
        address approver = msg.sender;
        _allowances[approver][sender] = amount;
        emit Approval(approver, sender, amount);
        return true;
    }
    
    function transferFrom(address sender, address recipent, uint256 amount) public virtual override returns (bool) {
        _balances[sender] = _balances[sender] - amount;
        _balances[recipent] = _balances[recipent] + amount;
        emit Transfer(sender, recipent, amount);
        
        _allowances[sender][recipent] = amount;
        emit Approval(sender, recipent, amount);
        return true;
    }
}


