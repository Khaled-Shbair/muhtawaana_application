import '/config/all_imports.dart';

extension ListOfProductsOfCartMapper on ListOfProductsOfCartResponse {
  toDomain() {
    return ListOfProductsOfCartModel(
      id: id.onNull(),
      product: product!.toDomain(),
      quantity: quantity.onNull(),
    );
  }
}
