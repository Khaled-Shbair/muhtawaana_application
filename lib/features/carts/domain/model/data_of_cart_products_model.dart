import '/config/all_imports.dart';

class DataOfCartProductsModel {
  List<ListOfProductsOfCartModel> cartItems;
  double subTotal;
  double total;

  DataOfCartProductsModel({
    required this.cartItems,
    required this.total,
    required this.subTotal,
  });
}
