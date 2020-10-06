import 'package:flutter_test/flutter_test.dart';
import 'package:simple_dart_tools/dart_tools.dart';

void main() {
  DartValidators toTest = DartValidators();
  test('Testing phone with empty string', () {
    expect(toTest.validatePhone(''), equals(false));
  });
  test('Testing phone 1', () {
    expect(toTest.validatePhone('(11)-9898-8884'), equals(true));
  });
  test('Testing phone 2', () {
    expect(toTest.validatePhone('(11ASD)-9898-8884'), equals(false));
  });
  test('Testing phone 3', () {
    expect(toTest.validatePhone('1198988884'), equals(true));
  });
  test('Testing phone 4', () {
    expect(toTest.validatePhone('(11)98988884'), equals(true));
  });
  test('Testing phone 5', () {
    expect(toTest.validatePhone('11 98988884'), equals(true));
  });
  test('Testing email asserting', () {
    expect(toTest.validateEmail('test@test.com.br'), equals(true));
  });
  test('Testing failed email asserting', () {
    expect(toTest.validateEmail('12344123test.com.br'), equals(false));
  });

  test('Testing cpf equals validate', () {
    expect(toTest.validateCPF('11111111111'), equals(false));
  });
  test('Testing only numbers 1', () {
    expect(toTest.onlyNumbers('------'), equals(''));
  });
  test('Testing only numbers 2', () {
    expect(toTest.onlyNumbers('22-22'), equals('2222'));
  });
  test('Testing only with phone number +55(11) 9188-7665)', () {
    expect(toTest.onlyNumbers('+55(11) 9188-7665'), equals('551191887665'));
  });
  test('Testing cpf equals validate', () {
    expect(toTest.validateCPF('22222222222'), equals(false));
  });
  test('Testing valide cpf', () {
    expect(toTest.validateCPF('31499175817'), equals(true));
  });
  test('Testing wrong cpf', () {
    expect(toTest.validateCPF('31499175814'), equals(false));
  });
  test('Testing cpf with dots', () {
    expect(toTest.validateCPF('314.991.758-17'), equals(true));
  });
}
