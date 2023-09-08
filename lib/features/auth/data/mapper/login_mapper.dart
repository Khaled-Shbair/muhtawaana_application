import '/config/all_imports.dart';

extension LoginMapper on LoginResponse {
  toDomain() {
    return LoginModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data?.toDomain(),
    );
  }
}
