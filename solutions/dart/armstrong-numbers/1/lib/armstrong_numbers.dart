import 'dart:math';

class ArmstrongNumbers {
  
  bool isArmstrongNumber(String numberAsString){
    // numberAsString = '345';
    BigInt number = BigInt.parse(numberAsString);
    int power = numberAsString.length;
    List<String> stringFigures = numberAsString.split("");
    List<BigInt> figures = stringFigures.map(BigInt.parse).toList();
    BigInt result = BigInt.from(0);
    for (var figure in figures){
      result += figure.pow(power);
     }
    return number==result;
  }
}
