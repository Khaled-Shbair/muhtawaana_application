import '/config/all_imports.dart';

class CategoriesModel {
  bool status;
  String message;
  ListOfCategoriesModel data;

  CategoriesModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
