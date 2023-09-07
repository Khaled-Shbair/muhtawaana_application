import '/config/all_imports.dart';

extension DataLoginMapper on DataLoginResponse {
  toDomain() {
    return DataLoginModel(
      id: id.onNull(),
      name: name.onNull(),
      image: image.onNull(),
      token: token.onNull(),
      email: email.onNull(),
      phone: phone.onNull(),
      credit: credit.onNull(),
      points: points.onNull(),
    );
  }
}
