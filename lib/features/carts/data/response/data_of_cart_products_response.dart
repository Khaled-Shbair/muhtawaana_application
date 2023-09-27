import '/config/all_imports.dart';

part 'data_of_cart_products_response.g.dart';

@JsonSerializable()
class DataOfCartProductsResponse {
  @JsonKey(name: ApiConstants.cartItems)
  List<ListOfProductsOfCartResponse>? cartItems;
  @JsonKey(name: ApiConstants.subTotal)
  double? subTotal;
  @JsonKey(name: ApiConstants.total)
  double? total;

  DataOfCartProductsResponse({
    this.cartItems,
    this.total,
    this.subTotal,
  });

  factory DataOfCartProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfCartProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfCartProductsResponseToJson(this);
}
