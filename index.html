// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
}

contract RedemptionContract {
    IERC20 public hotelToken;
    address public owner;

    uint256 public constant REDEMPTION_COST = 10 * 10**18;

    event Redeemed(
        address indexed user,
        uint256 amount,
        string reward
    );

    constructor(address _hotelToken) {
        hotelToken = IERC20(_hotelToken);
        owner = msg.sender;
    }

    function redeem(string calldata reward) external {
        require(bytes(reward).length > 0, "Reward required");

        require(
            hotelToken.transferFrom(
                msg.sender,
                address(this),
                REDEMPTION_COST
            ),
            "HLT transfer failed"
        );

        emit Redeemed(
            msg.sender,
            REDEMPTION_COST,
            reward
        );
    }

    function hotelTokenBalance() external view returns (uint256) {
        return hotelToken.balanceOf(address(this));
    }

    function withdrawHotelToken(uint256 amount) external {
        require(msg.sender == owner, "Not owner");

        require(
            hotelToken.transfer(msg.sender, amount),
            "Transfer failed"
        );
    }
}
