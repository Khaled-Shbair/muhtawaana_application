import '/config/all_imports.dart';

part 'product_data_home_response.g.dart';

@JsonSerializable()
class ProductDataHomeResponse {
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

  ProductDataHomeResponse({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.inCart,
    this.inFavorites,
    this.description,
    this.name,
    this.image,
    this.images,
  });

  factory ProductDataHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDataHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataHomeResponseToJson(this);
}
