class DartValidators {
  ///
  /// Validate brazilian phone
  /// validate with masked input (xx) xxxx-xxxx || (xx) xxxxX-xxxx || xxXXXX-XXXX || xxXXXXX-XXXX
  bool validatePhone(String phone) {
    final phoneRegex =
        RegExp(r'^[\(]?[0-9]{2}[\)]?[-, ]?[0-9]?[0-9]{4}[-]?[0-9]{4}$');
    return phoneRegex.hasMatch(phone);
  }

  ///
  ///return only numbers string
  String onlyNumbers(String input) {
    return input.replaceAll(RegExp('[^0-9]'), '');
  }

  ///
  ///Siple method to validate an email
  ///
  bool validateEmail(String email) {
    String emailRegex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(emailRegex);
    return regExp.hasMatch(email);
  }

  ///
  ///CPF is a personal register document in Brazil
  ///Used by BR IRS to identify people.
  ///Has 11 numerical characters,
  ///This method validate a real CPF number
  bool validateCPF(String cpfNumber) {
    RegExp sequencyRegex = RegExp(r'(.)\1{10,11}');
    cpfNumber = onlyNumbers(cpfNumber);

    if (sequencyRegex.hasMatch(cpfNumber)) return false;

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
      return true;
    } else
      return false;
  }
}
