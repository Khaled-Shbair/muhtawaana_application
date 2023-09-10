import '/config/all_imports.dart';

extension DataCategoryMapper on DataCategoryResponse {
  toDomain() {
    return DataCategoryModel(
      image: image.onNull(),
      name: name.onNull(),
      id: id.onNull(),
    );
  }
}
