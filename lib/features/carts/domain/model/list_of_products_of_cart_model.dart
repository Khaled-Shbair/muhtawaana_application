import '/config/all_imports.dart';

class ListOfProductsOfCartModel {
  int id;
  int quantity;
  DataOfProductOfCartModel product;

  ListOfProductsOfCartModel({
    required this.quantity,
    required this.product,
    required this.id,
  });
}
