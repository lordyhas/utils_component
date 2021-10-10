
import 'package:utils_component/utils_component.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('adds one to input values', () {
    final go = Go();
    expect(go.increment(2), 3);
    expect(go.increment(-7), -6);
    expect(go.increment(0), 1);
  });

  /*test('if extension on String work correctly', (){

    const String hello = 'hello ';
    const String word = 'word';

    expect(hello.concat(word), hello + word);


  });*/
}
