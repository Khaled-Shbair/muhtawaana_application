import '/config/all_imports.dart';

extension LogoutMapper on LogoutResponse {
  toDomain() {
    return LogoutModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
