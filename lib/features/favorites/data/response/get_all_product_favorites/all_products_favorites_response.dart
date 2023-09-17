import '/config/all_imports.dart';

part 'all_products_favorites_response.g.dart';

@JsonSerializable()
class AllProductsFavoritesResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  ListOfProductsFavoritesResponse? data;

  AllProductsFavoritesResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AllProductsFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductsFavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllProductsFavoritesResponseToJson(this);
}
