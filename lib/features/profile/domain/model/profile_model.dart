import '/config/all_imports.dart';

class ProfileModel {
  bool status;
  String message;
  DataProfileModel data;

  ProfileModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
