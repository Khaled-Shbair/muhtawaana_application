import '/config/all_imports.dart';

extension EditProfileMapper on EditProfileResponse {
  toDomain() {
    return EditProfileModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
