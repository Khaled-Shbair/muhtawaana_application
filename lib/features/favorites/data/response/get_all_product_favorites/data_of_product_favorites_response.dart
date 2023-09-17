import '/config/all_imports.dart';

part 'data_of_product_favorites_response.g.dart';

@JsonSerializable()
class DataOfProductFavoritesResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.image)
  String? image;
  @JsonKey(name: ApiConstants.price)
  double? price;
  @JsonKey(name: ApiConstants.oldPrice)
  double? oldPrice;
  @JsonKey(name: ApiConstants.discount)
  double? discount;
  @JsonKey(name: ApiConstants.description)
  String? description;

  DataOfProductFavoritesResponse({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.description,
    this.name,
    this.image,
  });

  factory DataOfProductFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfProductFavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfProductFavoritesResponseToJson(this);
}
