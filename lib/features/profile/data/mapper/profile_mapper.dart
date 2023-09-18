
import '/config/all_imports.dart';

extension ProfileMapper on ProfileResponse {
  toDomain() {
    return ProfileModel(
      status: status.onNull(),
      message: message.onNull(), data: data!.toDomain(),
    );
  }
}
