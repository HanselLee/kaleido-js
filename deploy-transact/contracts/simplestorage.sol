pragma solidity ^0.5.2;

contract simplestorage {
   string public storedData;

   event DataStored (
      string data
   );

   constructor(string initVal) public {
      storedData = initVal;
   }

   function set(string x) public returns (string value) {
      require(x < 100, "Value can not be over 100");
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() view public returns (string retVal) {
      return storedData;
   }

   function query() view public returns (string retVal) {
      return storedData;
   }
}
