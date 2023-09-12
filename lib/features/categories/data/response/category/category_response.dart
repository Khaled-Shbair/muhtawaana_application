import '/config/all_imports.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  ListOfProductsOfCategoryResponse? data;

  CategoryResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}
