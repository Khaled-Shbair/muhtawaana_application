import '/config/all_imports.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  CurrentPageOfCategoryResponse? data;

  CategoriesResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);
}