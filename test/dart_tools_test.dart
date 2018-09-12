import 'package:test/test.dart';
import 'package:simple_dart_tools/dart_tools.dart';

void main() {
  DartValidators toTest = DartValidators();
  test('Testing email asserting', () {
    expect(toTest.validateEmail('test@test.com.br'), equals(true));
  });
  test('Testing failed email asserting', () {
    expect(toTest.validateEmail('12344123test.com.br'), equals(false));
  });

  test('Testing cpf equals validate', () {
    expect(toTest.validateCPF('11111111111'), equals(false));
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
}
