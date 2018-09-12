class DartTools {
  String oneEqual = '11111111111';
  String twoEqual = '22222222222';

  bool validateEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  bool validaCpf(String cpfNumber) {
    if (cpfNumber == oneEqual)
      return false;
    else if (cpfNumber == twoEqual) return false;

    var numbers = cpfNumber.split('');
    int firstDigitMax = 10;
    int firstDigitSum = 0;
    for (var i = 0; i <= 8; i++) {
      firstDigitSum += (int.parse(numbers[i]) * firstDigitMax);
      firstDigitMax--;
    }

    int firstDigitVerification = ((firstDigitSum * 10) % 11);

    if (firstDigitVerification != int.parse(numbers[9])) {
      return false;
    }

    int secoundDigMax = 11;
    int soundDigSum = 0;
    for (var k = 0; k <= 9; k++) {
      soundDigSum += int.parse(numbers[k]) * secoundDigMax;
      secoundDigMax--;
    }
    int secoundDigitVerification = (((soundDigSum * 10) % 11));
    if (secoundDigitVerification == int.parse(numbers[10])) {
      print('VALIDACPF: CPF VÁLIDO');
      return true;
    } else
      return false;
  }
}