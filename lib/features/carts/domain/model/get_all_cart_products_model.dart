import '/config/all_imports.dart';

class GetAllCartProductsModel {
  bool status;
  String message;
  DataOfCartProductsModel data;

  GetAllCartProductsModel({
    required this.status,
    required this.message,
    required this.data,
  });
}
