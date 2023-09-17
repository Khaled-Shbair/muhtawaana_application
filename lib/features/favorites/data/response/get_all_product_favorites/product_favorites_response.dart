import '/config/all_imports.dart';

part 'product_favorites_response.g.dart';

@JsonSerializable()
class ProductFavoritesResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  DataOfProductFavoritesResponse? product;

  ProductFavoritesResponse({
    this.id,
    this.product,
  });

  factory ProductFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductFavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFavoritesResponseToJson(this);
}
