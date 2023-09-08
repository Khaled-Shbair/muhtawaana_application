import '/config/all_imports.dart';

part 'banner_data_home_response.g.dart';

@JsonSerializable()
class BannerDataHomeResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.image)
  String? image;
  @JsonKey(name: ApiConstants.category)
  dynamic category;
  @JsonKey(name: ApiConstants.product)
  dynamic product;

  BannerDataHomeResponse({
    this.id,
    this.image,
    this.category,
    this.product,
  });

  factory BannerDataHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerDataHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDataHomeResponseToJson(this);
}
