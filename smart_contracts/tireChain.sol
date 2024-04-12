pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/manager/AccessManaged.sol";

contract TireChain is ERC721, ERC721Enumerable, ERC721Burnable, AccessManaged {
    using Strings for uint256;

    uint256 private _nextTokenId;

    // Attributes of the NFT
    struct TireInfo {
        string brand;
        string model;
        string size;
        uint256 manufactureDate;
        string imageHash;
        string docHash;
    }

    // Mapping to store information about the NFTs
    mapping(uint256 => TireInfo) public tireInfo;

    // Events to track changes in ownership and information updates
    event Trans(address indexed _from, address indexed _to, uint256 _tokenId);
    event UpdateInfo(uint256 _tokenId, string _brand, string _model, string _size, uint256 _manufactureDate, string _imageHash, string _docHash);

    constructor(address initialAuthority)
        ERC721("TireChain", "TRCH")
        AccessManaged(initialAuthority)
    {}

    // Function to create new NFTs
    function mint(string memory _brand, string memory _model, string memory _size, uint256 _manufactureDate, string memory _imageHash, string memory _docHash) public restricted returns (uint256) {
        uint256 newTireId = _nextTokenId++;
        _mint(msg.sender, newTireId);
        tireInfo[newTireId] = TireInfo(_brand, _model, _size, _manufactureDate, _imageHash, _docHash);
        emit UpdateInfo(newTireId, _brand, _model, _size, _manufactureDate, _imageHash, _docHash);
        return newTireId;
    }

    // Function to transfer ownership of NFTs
    function transfer(uint256 _tokenId, address _to) public {
        require(ownerOf(_tokenId) == msg.sender, "You are not the owner of this tire");
        _transfer(msg.sender, _to, _tokenId);
        emit Trans(msg.sender, _to, _tokenId);
    }

    // Function to retrieve information about a given NFT
    function getInfo(uint256 _tokenId) public view returns (string memory, string memory, string memory, uint256, string memory, string memory) {
        TireInfo storage info = tireInfo[_tokenId];
        return (info.brand, info.model, info.size, info.manufactureDate, info.imageHash, info.docHash);
    }

    // The following functions are overrides required by Solidity.

    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721, ERC721Enumerable)
        returns (address)
    {
        return super._update(to, tokenId, auth);
    }

    function _increaseBalance(address account, uint128 value)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._increaseBalance(account, value);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
