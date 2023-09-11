import '/config/all_imports.dart';

extension CategoryDetailsMapper on CategoryDetailsResponse {
  toDomain() {
    return CategoryDetailsModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
