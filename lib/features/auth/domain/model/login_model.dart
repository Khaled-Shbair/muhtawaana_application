import '/config/all_imports.dart';

class LoginModel {
  bool status;
  String message;
  List<DataLoginModel> data;

  LoginModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
