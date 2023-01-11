pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   event DataStored (
      string data
   );

   constructor(string initVal) public {
      storedData = initVal;
   }

   function set(string x) public returns (string value) {
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() public view returns (string retVal) {
      return storedData;
   }

   function query() public view returns (string retVal) {
      return storedData;
   }
}
