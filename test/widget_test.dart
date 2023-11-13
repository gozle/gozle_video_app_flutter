import 'package:flutter_test/flutter_test.dart';

String pluralize(int number, String word) {
  if (number % 10 == 1 && number % 100 != 11) {
    return '$number $word';
  } else if (number % 10 >= 2 && number % 10 <= 4 && (number % 100 < 10 || number % 100 >= 20)) {
    return '$number $wordа';
  } else {
    return '$number $wordов';
  }
}

void main() {
  test('Test pluralize for 1', () {
    expect(pluralize(1, 'просмотр'), '1 просмотр');
  });

  test('Test pluralize for 2', () {
    expect(pluralize(2, 'просмотр'), '2 просмотра');
  });

  test('Test pluralize for 5', () {
    expect(pluralize(5, 'просмотр'), '5 просмотров');
  });

  test('Test pluralize for 11', () {
    expect(pluralize(11, 'просмотр'), '11 просмотров');
  });

  test('Test pluralize for 25', () {
    expect(pluralize(25, 'просмотр'), '25 просмотров');
  });
}
