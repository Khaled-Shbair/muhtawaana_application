import '/config/all_imports.dart';

class CategoryDetailsModel {
  bool status;
  String message;
  CurrentPageOfCategoryDetailsModel data;

  CategoryDetailsModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
