import '/config/all_imports.dart';

extension DataOfProfileMapper on DataOfProfileResponse {
  toDomain() {
    return DataOfProfileModel(
      name: name.onNull(),
      id: id.onNull(),
      image: image.onNull(),
      phone: phone.onNull(),
      credit: credit.onNull(),
      email: email.onNull(),
      token: token.onNull(),
      points: points.onNull(),
    );
  }
}
