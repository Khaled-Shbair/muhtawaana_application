import '/config/all_imports.dart';

class AllProductsFavoritesModel {
  bool status;
  String message;
  ListOfProductsFavoritesModel data;

  AllProductsFavoritesModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
