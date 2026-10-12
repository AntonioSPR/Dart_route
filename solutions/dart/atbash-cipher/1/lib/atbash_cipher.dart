class AtbashCipher {
  static const String alfabet = "abcdefghijklmnopqrstuvwxyz";
  static const String tebafla = "zyxwvutsrqponmlkjihgfedcba";
  static const String numbers = "0123456789";

  String encode([String text=""]){
    text = text.toLowerCase();
    String encodedText = "";
    for (var i=0, j=0; i<text.length ; i++){
      if (alfabet.contains(text[i])){
        encodedText = encodedText + tebafla[alfabet.indexOf(text[i])]; 
        j++;
      } else if (numbers.contains(text[i])){
        encodedText = encodedText + text[i];
        j++;
      }
      if (5==j){
        encodedText = encodedText + ' ';
        j=0;
      }
    }
    if (encodedText.endsWith(' ')){
      encodedText = encodedText.substring(0, encodedText.length - 1);      
    }
    return encodedText;
  }

  String decode([String encodedText=""]){
    String decodedText = "";
    for (var letter in encodedText.split('')){
      if(tebafla.contains(letter)){
        decodedText = decodedText + alfabet[tebafla.indexOf(letter)];
      } else if(numbers.contains(letter)){
        decodedText = decodedText + letter;
      }
    }
    return decodedText;
  }
  
}
