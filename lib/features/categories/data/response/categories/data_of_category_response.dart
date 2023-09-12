import '/config/all_imports.dart';

part 'data_of_category_response.g.dart';

@JsonSerializable()
class DataOfCategoryResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.image)
  String? image;

  DataOfCategoryResponse({
    this.id,
    this.name,
    this.image,
  });

  factory DataOfCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfCategoryResponseToJson(this);
}
