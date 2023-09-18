import '/config/all_imports.dart';

part 'favorites_response.g.dart';

@JsonSerializable()
class FavoritesResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  DataHomeResponse? data;

  FavoritesResponse({
    this.status,
    this.message,
    this.data,
  });

  factory FavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FavoritesResponseToJson(this);
}
