import '/config/all_imports.dart';

part 'data_of_product_of_cart_response.g.dart';

@JsonSerializable()
class DataOfProductOfCartResponse {
  @JsonKey(name: ApiConstants.images)
  List<String>? images;
  @JsonKey(name: ApiConstants.inFavorites)
  bool? inFavorites;
  @JsonKey(name: ApiConstants.inCart)
  bool? inCart;
  @JsonKey(name: ApiConstants.image)
  String? image;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.description)
  String? description;
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.price)
  int? price;
  @JsonKey(name: ApiConstants.oldPrice)
  int? oldPrice;
  @JsonKey(name: ApiConstants.discount)
  int? discount;

  DataOfProductOfCartResponse({
    this.images,
    this.inCart,
    this.inFavorites,
    this.id,
    this.discount,
    this.image,
    this.name,
    this.price,
    this.oldPrice,
    this.description,
  });

  factory DataOfProductOfCartResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfProductOfCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfProductOfCartResponseToJson(this);
}
