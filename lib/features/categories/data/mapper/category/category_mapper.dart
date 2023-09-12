import '/config/all_imports.dart';

extension CategoryMapper on CategoryResponse {
  toDomain() {
    return CategoryModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
