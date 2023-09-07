import '/config/all_imports.dart';

class SignUpModel {
  bool status;
  String message;
  List<DataSignUpModel> data;

  SignUpModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
