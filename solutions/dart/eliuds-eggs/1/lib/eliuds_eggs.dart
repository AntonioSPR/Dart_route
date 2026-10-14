class EggCounter {
  // Without any error handling
  int count(int eggs){
    int number = eggs;
    int quotient;
    int remainder;
    int countOfEggs = 0;
    do{
      quotient = number ~/ 2;  // integer division
      remainder = number % 2;  // modulo of integer division
      countOfEggs += remainder;
      number = quotient;
    }while(number > 0);
    return countOfEggs;
  }
}
