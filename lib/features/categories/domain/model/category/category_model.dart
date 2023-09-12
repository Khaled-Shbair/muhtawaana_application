import '/config/all_imports.dart';

class CategoryModel {
  bool status;
  String message;
  ListOfProductsOfCategoryModel data;

  CategoryModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
