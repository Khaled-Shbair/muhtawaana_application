import '/config/all_imports.dart';

part 'data_category_response.g.dart';

@JsonSerializable()
class DataCategoryResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.image)
  String? image;

  DataCategoryResponse({
    this.id,
    this.name,
    this.image,
  });

  factory DataCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DataCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataCategoryResponseToJson(this);
}
