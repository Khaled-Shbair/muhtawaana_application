import '/config/all_imports.dart';

extension DataOfCategoryMapper on DataOfCategoryResponse {
  toDomain() {
    return DataOfCategoryModel(
      image: image.onNull(),
      name: name.onNull(),
      id: id.onNull(),
    );
  }
}
