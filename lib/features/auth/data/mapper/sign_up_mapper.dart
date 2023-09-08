import '/config/all_imports.dart';

extension SignUpMapper on SignUpResponse {
  toDomain() {
    return SignUpModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data?.toDomain(),
    );
  }
}
