pragma solidity ^0.5.16;
import "./ERC721Full.sol";


contract Color is ERC721Full {
    string[] public colors;
    mapping(string => bool) _colorExists;

    constructor() public ERC721Full("Color", "COLOR") {}

    function mint(string memory _color) public {
        require(!_colorExists[_color]);
        uint256 _id = colors.push(_color);
        _mint(msg.sender, _id);
        _colorExists[_color] = true;

        //Color :require unique colorx
        //Color :add it
        //call the mint function
        //track it
    }
}
// mint function to issue newtokens ...non-fungible tokens have unique id
