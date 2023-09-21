import '/config/all_imports.dart';

extension ChangePasswordMapper on ChangePasswordResponse {
  toDomain() {
    return ChangePasswordModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
