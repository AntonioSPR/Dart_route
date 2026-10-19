/*
CÓDIGO
======
*/
class Proverb {

  
  String recite(List<String>words){
    if (words.isEmpty){
      return '';
    }
    return _recite(words, words[0]);
  } // ***** String recite(List<String>words){
      
  String _recite(List<String>words, String nail){
    if (words.length == 1){
      return 'And all for the want of a $nail.';
    }
    return 'For want of a ${words[0]} the ${words[1]} was lost.\n' +
           _recite(words.sublist(1), nail);
    
  } // ***** String recite(List<String>words){
      
/*
PRUEBAS:
========
import 'package:proverb/proverb.dart';

        

          
          
import 'package:test/test.dart';

        

          
          

        

          
          
void main() {

        

          
          
  final proverb = Proverb();

        

          
          

        

          
          
  group('Proverb', () {

        

          
          
    test('zero pieces', () {

        

          
          
      List<String> pieces = [];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = "";

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: false);

        

          
          

        

          
          
    test('one piece', () {

        

          
          
      final pieces = ["nail"];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = "And all for the want of a nail.";

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: true);

        

          
          

        

          
          
    test('two pieces', () {

        

          
          
      final pieces = ["nail", "shoe"];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = '''

        

          
          
For want of a nail the shoe was lost.

        

          
          
And all for the want of a nail.''';

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: true);

        

          
          

        

          
          
    test('three pieces', () {

        

          
          
      final pieces = ["nail", "shoe", "horse"];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = '''

        

          
          
For want of a nail the shoe was lost.

        

          
          
For want of a shoe the horse was lost.

        

          
          
And all for the want of a nail.''';

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: true);

        

          
          

        

          
          
    test('full proverb', () {

        

          
          
      final pieces = ["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = '''

        

          
          
For want of a nail the shoe was lost.

        

          
          
For want of a shoe the horse was lost.

        

          
          
For want of a horse the rider was lost.

        

          
          
For want of a rider the message was lost.

        

          
          
For want of a message the battle was lost.

        

          
          
For want of a battle the kingdom was lost.

        

          
          
And all for the want of a nail.''';

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: true);

        

          
          

        

          
          
    test('four pieces modernized', () {

        

          
          
      final pieces = ["pin", "gun", "soldier", "battle"];

        

          
          
      final result = proverb.recite(pieces);

        

          
          
      final expected = '''

        

          
          
For want of a pin the gun was lost.

        

          
          
For want of a gun the soldier was lost.

        

          
          
For want of a soldier the battle was lost.

        

          
          
And all for the want of a pin.''';

        

          
          
      expect(result, equals(expected));

        

          
          
    }, skip: true);

        

          
          
  });

        

          
          
}

        
*/
/*
RESULTADO DE LAS PRUEBAS
=========================
Proverb two pieces [E]                                                                                                                                            
  Expected: 'For want of a nail the shoe was lost.
'
              'And all for the want of a nail.'
    Actual: 'For want of a nail the shoe was lost.
'
              ''
     Which: is different. Both strings start the same, but the actual value is missing the following trailing characters: And all fo ...
  
  package:matcher              expect
  test/proverb_test.dart 28:7  main.<fn>.<fn>
  

To run this test again: dart test test/proverb_test.dart -p vm --plain-name 'Proverb two pieces'

Proverb three pieces [E]                                                                                                                                          
  Expected: 'For want of a nail the shoe was lost.
'
              'For want of a shoe the horse was lost.
'
              'And all for the want of a nail.'
    Actual: 'For want of a nail the shoe was lost.
'
              'And all for the want of a shoe.'
     Which: is different.
            Expected: ... as lost.
For want o ...
              Actual: ... as lost.
And all fo ...
                                    ^
             Differ at offset 39
  
  package:matcher              expect
  test/proverb_test.dart 38:7  main.<fn>.<fn>
  

To run this test again: dart test test/proverb_test.dart -p vm --plain-name 'Proverb three pieces'

Proverb full proverb [E]                                                                                                                                          
  Expected: 'For want of a nail the shoe was lost.
'
              'For want of a shoe the horse was lost.
'
              'For want of a horse the rider was lost.
'
              'For want of a rider the message was lost.
'
              'For want of a message the battle was lost.
'
              'For want of a battle the kingdom was lost.
'
              'And all for the want of a nail.'
    Actual: 'For want of a nail the shoe was lost.
'
              'For want of a shoe the horse was lost.
'
              'For want of a horse the rider was lost.
'
              'And all for the want of a rider.'
     Which: is different.
            Expected: ... as lost.
For want o ...
              Actual: ... as lost.
And all fo ...
                                    ^
             Differ at offset 120
  
  package:matcher              expect
  test/proverb_test.dart 52:7  main.<fn>.<fn>
  

To run this test again: dart test test/proverb_test.dart -p vm --plain-name 'Proverb full proverb'

Proverb four pieces modernized [E]                                                                                                                                
  Expected: 'For want of a pin the gun was lost.
'
              'For want of a gun the soldier was lost.
'
              'For want of a soldier the battle was lost.
'
              'And all for the want of a pin.'
    Actual: 'For want of a pin the gun was lost.
'
              'For want of a gun the soldier was lost.
'
              ''
     Which: is different. Both strings start the same, but the actual value is missing the following trailing characters: For want o ...
  
  package:matcher              expect
  test/proverb_test.dart 63:7  main.<fn>.<fn>
*/
  
  
} // ********* class Proverb {
