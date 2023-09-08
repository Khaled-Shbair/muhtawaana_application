import '/config/all_imports.dart';

class LoginModel {
  bool status;
  String message;
  DataLoginModel data;

  LoginModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
