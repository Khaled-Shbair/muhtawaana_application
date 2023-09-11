import '/config/all_imports.dart';

part 'category_details_response.g.dart';

@JsonSerializable()
class CategoryDetailsResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  CurrentPageOfCategoryDetailsResponse? data;

  CategoryDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CategoryDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDetailsResponseToJson(this);
}
