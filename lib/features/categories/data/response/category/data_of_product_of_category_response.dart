import '/config/all_imports.dart';

part 'data_of_product_of_category_response.g.dart';

@JsonSerializable()
class DataOfProductOfCategoryResponse {
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
  @JsonKey(name: ApiConstants.images)
  List<String>? images;
  @JsonKey(name: ApiConstants.inFavorites)
  bool? inFavorites;
  @JsonKey(name: ApiConstants.inCart)
  bool? inCart;

  DataOfProductOfCategoryResponse({
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

  factory DataOfProductOfCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfProductOfCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataOfProductOfCategoryResponseToJson(this);
}
