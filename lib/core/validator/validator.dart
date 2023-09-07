import '/config/all_imports.dart';

class Validator {
  String? validateEmail(String? email) {
    if (email == null || !GetUtils.isEmail(email)) {
      return ManagerStrings.invalidEmail;
    }
    return null;
  }

  String? validatePhoneNum(String? phoneNum) {
    if (phoneNum == null || phoneNum.length != 10) {
      return ManagerStrings.invalidPhone;
    }

    return null;
  }
}
