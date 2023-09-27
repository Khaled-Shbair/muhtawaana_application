import '/config/all_imports.dart';

part 'update_quantity_product_of_cart_response.g.dart';

@JsonSerializable()
class UpdateQuantityOfProductCartResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;

  UpdateQuantityOfProductCartResponse({
    this.status,
    this.message,
  });

  factory UpdateQuantityOfProductCartResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateQuantityOfProductCartResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateQuantityOfProductCartResponseToJson(this);
}
