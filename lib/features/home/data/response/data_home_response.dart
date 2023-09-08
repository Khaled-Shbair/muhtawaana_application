import '/config/all_imports.dart';

part 'data_home_response.g.dart';

@JsonSerializable()
class DataHomeResponse {
  @JsonKey(name: ApiConstants.banners)
  List<BannerDataHomeResponse>? banners;
  @JsonKey(name: ApiConstants.products)
  List<ProductDataHomeResponse>? products;

  DataHomeResponse({
    this.banners,
    this.products,
  });

  factory DataHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$DataHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataHomeResponseToJson(this);
}
