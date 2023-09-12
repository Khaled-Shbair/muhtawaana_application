import '/config/all_imports.dart';

part 'data_of_product_details_response.g.dart';

@JsonSerializable()
class DataOfProductDetailsResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.price)
  double? price;
  @JsonKey(name: ApiConstants.oldPrice)
  double? oldPrice;
  @JsonKey(name: ApiConstants.discount)
  double? discount;
  @JsonKey(name: ApiConstants.image)
  String? image;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.description)
  String? description;
  @JsonKey(name: ApiConstants.inFavorites)
  bool? inFavorites;
  @JsonKey(name: ApiConstants.inCart)
  bool? inCart;
  @JsonKey(name: ApiConstants.images)
  List<String>? images;

  DataOfProductDetailsResponse({
    this.inCart,
    this.inFavorites,
    this.oldPrice,
    this.price,
    this.id,
    this.description,
    this.image,
    this.name,
    this.discount,
    this.images,
  });

  factory DataOfProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfProductDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfProductDetailsResponseToJson(this);
}
