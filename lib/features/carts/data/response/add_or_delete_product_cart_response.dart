import '/config/all_imports.dart';

part 'add_or_delete_product_cart_response.g.dart';

@JsonSerializable()
class AddOrDeleteProductCartResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;

  AddOrDeleteProductCartResponse({
    this.status,
    this.message,
  });

  factory AddOrDeleteProductCartResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOrDeleteProductCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrDeleteProductCartResponseToJson(this);
}
