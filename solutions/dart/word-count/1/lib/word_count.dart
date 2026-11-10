class WordCount {
  
  Map<String, int> countWords(String text) {
    Map<String, int> count = {};
    // Coincide con letras/números que opcionalmente contienen un apóstrofo interno
    RegExp regExp = RegExp(r"\b[a-zA-Z0-9]+('[a-zA-Z0-9]+)?\b");

    Iterable<Match> matches = regExp.allMatches(text.toLowerCase());

    for (Match match in matches) {
      String word = match.group(0)!;
      count.update(word, (val) => val + 1, ifAbsent: () => 1);
    }

    return count;
  }
}
