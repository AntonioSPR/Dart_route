class NucleotideCount {
  
  Map<String, int> count (String chain){
    Map<String, int> counted = {'A': 0, 'C': 0, 'G': 0, 'T': 0};
    for(var char in chain.split('')){
      // I verify that counted[char] is not null and notify Dart.
      if (counted.containsKey(char)){
        counted[char] = counted[char]! + 1;
      }
      else {
        throw InvalidNucleotideException('Invalid char: $char');
      }
    }
    return counted;
  } // ***** Map<String, int> count (String chain){

} // ********* class NucleotideCount {


class InvalidNucleotideException implements Exception {
  final String message;
  InvalidNucleotideException(this.message); // constructor

  @override
  String toString() => 'InvalidNucleotideException: $message';
    
} // ********* class InvalidNucleotideException implements Exception {

