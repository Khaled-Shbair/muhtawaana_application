import '/config/all_imports.dart';

part 'list_of_products_of_cart_response.g.dart';

@JsonSerializable()
class ListOfProductsOfCartResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.quantity)
  int? quantity;
  @JsonKey(name: ApiConstants.product)
  DataOfProductOfCartResponse? product;

  ListOfProductsOfCartResponse({
    this.quantity,
    this.product,
    this.id,
  });

  factory ListOfProductsOfCartResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfProductsOfCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfProductsOfCartResponseToJson(this);
}
