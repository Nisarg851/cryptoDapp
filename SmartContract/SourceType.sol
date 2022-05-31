// pragma solidity 0.6.0;               This targets a specific version of contract
// pragma solidity >=0.6.0 <0.9.0;      This targets versions between 0.6.0(inclusive) and 0.9.0
pragma solidity ^0.6.0;              // This targets every version from 0.6.0(inclusive) to 0.7.0(exclusive)

contract SimpleStorage{
    // Boolean values
    bool public boolVal = false;   // bool stands for boolean contains true or false

    // Unsigned Integer
    uint public uintNum = 10;     // uint stands for unsigned Integer i.e only +ve integers
    // uint variables can be assigned a fixed size like
    uint8 public uint8Num = 10;  // uint with 8 bits.
    // uintN  where N is multiple of 8 i.e uint8, uint16, uint24 ... uint256
    // *** uint == uint256 ***

    // Signed Integer
    int public intNum = -10;  // int can contain +ve as well as -ve integers
    // int variables can be assigned a fixed size like
    int8 public int8Num = -10;  //  int with 8 bits.
    // intN  where N is multiple of 8 i.e int8, int16, int24 ... int256
    // *** int == int256 ***

    // Fixed Point Numbers 
    // **Not Properly supported at the time of writing**
    ufixed public ufixedNum = 0.8;
    fixed public fixedNum = -0.8;

    // Address type
    // Normal address: this address does not accept ether i.e ether can't not be transfered on this address
    address addr1 = 0x474382984;         // address stores some type of etherium address like block address in hexadecimal form
    // payable address: this address does accept ether thus ether can be transfered on this address
    address payable addr2 = 0x83794728;  // address that can accept etherium
    // ***Address conversion***
    // address payable converts directly to address thus not need to specify i.e
    // addr1 = addr2
    // but address type needs to be explicitly converted into address payable type i.e
    // addr2 = payable(addr1)
    // Explicit conversions to and from address are allowed for uint160, integer literals, bytes20 and contract types.
    // ** checking the balance of an address**
    uint balanceInAddr1 = addr1.balance     // balance attribute is supported for both type of address
    uint balanceInAddr2 = addr2.balance
    // ** transfering money to an address **
    add2.transfer(10)   // transfer can be only used on address payable

    // String literals
    string stringVal = "This is a String";   // string can contains a list of characters

    // byteArrays
    bytes2 byteArrayOfSize2 = "Bytes";              // bytes2 stands for 2 bytes
    // its general form is bytesN where 8<=N<=256 and N is multiple of 8

    // For more types, check : https://docs.soliditylang.org/en/latest/types.html
}