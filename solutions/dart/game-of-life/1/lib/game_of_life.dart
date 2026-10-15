class GameOfLife {

  // 'late' indica que se inicializará en el constructor
  late List<List<int>> _matrix;
  List<List<int>> _nextMatrix = [];
  late int _totalRows;
  late int _totalColumns;

  // getter
  List<List<int>> matrix(){
    return _matrix;
  }

  // Cosntructor
  GameOfLife(this._matrix){
    if(_matrix.isNotEmpty){
      _totalRows = _matrix.length;
      _totalColumns = _matrix[0].length;
      // Crea la estructura de nextMatrix con ceros
      _nextMatrixToZero();
    }
    else{
      _totalRows = 0;
      _totalColumns = 0;
      _nextMatrix = [];      
    }
  }

  // To reset _nextMatrix to 0 // _matrix.isNotEmpty
  void _nextMatrixToZero(){
    if(_matrix.isNotEmpty){
      _totalRows = _matrix.length;
      _totalColumns = _matrix[0].length;
      // Crea la estructura de nextMatrix con ceros
      for (int i=0 ; i < _totalRows ; i++){
        List<int> newRow = []; 
        for (int j=0 ; j < _totalColumns ; j++){
          newRow.add(0);
        }
        _nextMatrix.add(newRow);
      }
    }
    else{
      _nextMatrix = [];      
    }
  }
  

  // ************************************** tick() 
  // Example of use:
  // final List<List<int>> input = [
  //   [0, 0, 0],
  //   [0, 1, 0],
  //   [0, 0, 0],
  // ];
  // final game = GameOfLife(input);
  // game.tick();
  void tick(){
    // Safety first
    if (_matrix.isEmpty){ 
      return;
    }

    int neighborsAlive;
    //traverse the matrix
    for (var i=0 ; i< _totalRows ; i++){
      for (var j=0 ; j< _totalColumns ; j++){
        neighborsAlive = 0;

        // traverse the neighborhood
        for (int row = i-1; row <= i+1 ; row++){
          for (int column = j-1; column <= j+1 ; column++){
            
            // Ignore the cell itself AND out-of-bounds positions
            if ((row != i || column != j) && row >= 0 && row < _totalRows && column >= 0 && column < _totalColumns ){
              // Count the neighbors that are alive
              neighborsAlive += _matrix[row][column];
            }
          }
        }
        
        switch (neighborsAlive) {
          case 2:
            _nextMatrix[i][j] = _matrix[i][j];
            break;
          case 3:
            _nextMatrix[i][j] = 1;
            break;
          default:
            _nextMatrix[i][j] = 0;
        }
      }
    }
    _matrix = [for (var fila in _nextMatrix) [...fila]];
    _nextMatrixToZero();
  }

}
