import '/config/all_imports.dart';

extension CategoriesMapper on CategoriesResponse {
  toDomain() {
    return CategoriesModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
