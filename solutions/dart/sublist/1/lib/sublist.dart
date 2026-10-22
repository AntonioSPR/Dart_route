enum Classification {
  equal,
  sublist,
  superlist,
  unequal,
}

class Sublist {
  Classification sublist(List<int> listOne, List<int> listTwo) {
    // Same lengths
    if (listOne.length == listTwo.length) {
      return _isSublist(listOne, listTwo)
          ? Classification.equal
          : Classification.unequal;
    }
    // listOne is shorter
    if (listOne.length < listTwo.length) {
      return _isSublist(listOne, listTwo)
          ? Classification.sublist
          : Classification.unequal;
    }

    // list one is bigger
    return _isSublist(listTwo, listOne)
        ? Classification.superlist
        : Classification.unequal;
  }

  /// Verifica si la lista `sub` está contenida de forma contigua en `main`
  bool _isSublist(List<int> sub, List<int> main) {
    if (sub.isEmpty) return true;
    if (sub.length > main.length) return false;

    // Recorremos los posibles puntos de inicio en la lista principal
    for (int i = 0; i <= main.length - sub.length; i++) {
      bool match = true;
      for (int j = 0; j < sub.length; j++) {
        if (main[i + j] != sub[j]) {
          match = false;
          break;
        }
      }
      if (match) return true;
    }
    return false;
  }
}

