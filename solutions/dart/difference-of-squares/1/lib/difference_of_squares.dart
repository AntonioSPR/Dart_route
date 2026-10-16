class DifferenceOfSquares {
  
  int squareOfSum(int n){
    int sum = 0;
    for (int i = 1 ; i <= n ; i++){
      sum += i;
    }
    return sum * sum;
  } // ********* int squareOfSum(int n){

  int sumOfSquares(int n){
    int sum = 0;
    for (int i = 1 ; i <= n ; i++){
      sum += i*i;
    }
    return sum;
  }

  int differenceOfSquares(i){
    return squareOfSum(i) - sumOfSquares(i);
  }
  
} // ********** class DifferenceOfSquares {
