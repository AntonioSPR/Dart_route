class Etl {

  // The parameter that the function expects is an associative array that has:
  // as key a String that represents an integer and 
  // as value an array of strings that represent the uppercase letters of the alphabet

  // Example of function call:
  // final legacy = {'1': ["A", "E", "I", "O", "U"]};
  // result = etl.transform(legacy);
  //expected = {"a": 1, "e": 1, "i": 1, "o": 1, "u": 1};
  
  Map<String, int> transform(Map<String, List<String>> legacy){
    Map<String, int> transformed = {};
    for (var entry in legacy.entries){
      var key = entry.key;
      var value = entry.value;
      for (var v in value){
        transformed[v.toLowerCase()] = int.parse(key);
      }
    }
    return transformed;
  }
}
