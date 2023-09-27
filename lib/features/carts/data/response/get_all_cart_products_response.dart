import '/config/all_imports.dart';

part 'get_all_cart_products_response.g.dart';

@JsonSerializable()
class GetAllCartProductsResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  DataOfCartProductsResponse? data;

  GetAllCartProductsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory GetAllCartProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCartProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllCartProductsResponseToJson(this);
}
