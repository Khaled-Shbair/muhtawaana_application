import '/config/all_imports.dart';

extension DataSignUpMapper on DataSignUpResponse {
  toDomain() {
    return DataSignUpModel(
      id: id.onNull(),
      name: name.onNull(),
      image: image.onNull(),
      token: token.onNull(),
      email: email.onNull(),
      phone: phone.onNull(),
    );
  }
}
