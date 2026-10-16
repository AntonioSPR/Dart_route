class House {
  List<String> _song = [
    'This is the house that Jack built.',

    'This is the malt '
    'that lay in the house that Jack built.',

    'This is the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the man all tattered and torn '
    'that kissed the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the priest all shaven and shorn '
    'that married the man all tattered and torn '
    'that kissed the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the rooster that crowed in the morn '
    'that woke the priest all shaven and shorn '
    'that married the man all tattered and torn '
    'that kissed the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the farmer sowing his corn '
    'that kept the rooster that crowed in the morn '
    'that woke the priest all shaven and shorn '
    'that married the man all tattered and torn '
    'that kissed the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.',

    'This is the horse and the hound and the horn '
    'that belonged to the farmer sowing his corn '
    'that kept the rooster that crowed in the morn '
    'that woke the priest all shaven and shorn '
    'that married the man all tattered and torn '
    'that kissed the maiden all forlorn '
    'that milked the cow with the crumpled horn '
    'that tossed the dog '
    'that worried the cat '
    'that killed the rat '
    'that ate the malt '
    'that lay in the house that Jack built.'];

  // We count from one to length
  late int _maxVerse;
  
  House(){
    _maxVerse = _song.length;
  }
  
  String _recite(int startVerse, int endVerse){
    if (startVerse > endVerse || startVerse > _maxVerse || startVerse < 1){
      return "";
    }

  return _song[startVerse - 1] + '\n' + _recite(startVerse+1 , endVerse);
  } // ***** String _recite(int startVerse, int endVerse){


  String recite(int startVerse, int endVerse){
    String mySong = _recite(startVerse, endVerse);
    return mySong.substring(0,mySong.length - 1);
  }

} // ***** class House {
