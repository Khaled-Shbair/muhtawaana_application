import '/config/all_imports.dart';

extension DataOfCartProductsMapper on DataOfCartProductsResponse {
  toDomain() {
    return DataOfCartProductsModel(
      subTotal: subTotal.onNull(),
      total: total.onNull(),
      cartItems: cartItems!
          .map<ListOfProductsOfCartModel>((e) => e.toDomain())
          .toList(),
    );
  }
}
