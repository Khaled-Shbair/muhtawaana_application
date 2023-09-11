import '/config/all_imports.dart';

part 'current_page_of_category_response.g.dart';

@JsonSerializable()
class CurrentPageOfCategoryResponse {
  @JsonKey(name: ApiConstants.currentPage)
  int? currentPage;
  @JsonKey(name: ApiConstants.data)
  List<DataCategoryResponse>? data;
  @JsonKey(name: ApiConstants.firstPageUrl)
  String? firstPageUrl;
  @JsonKey(name: ApiConstants.from)
  int? from;
  @JsonKey(name: ApiConstants.to)
  int? to;
  @JsonKey(name: ApiConstants.lastPage)
  int? lastPage;
  @JsonKey(name: ApiConstants.perPage)
  int? perPage;
  @JsonKey(name: ApiConstants.total)
  int? total;
  @JsonKey(name: ApiConstants.lastPageUrl)
  String? lastPageUrl;
  @JsonKey(name: ApiConstants.path)
  String? path;
  @JsonKey(name: ApiConstants.nextPageUrl)
  String? nextPageUrl;
  @JsonKey(name: ApiConstants.prevPageUrl)
  String? prevPageUrl;

  CurrentPageOfCategoryResponse({
    this.currentPage,
    this.data,
    this.perPage,
    this.lastPage,
    this.firstPageUrl,
    this.to,
    this.from,
    this.path,
    this.lastPageUrl,
    this.nextPageUrl,
    this.prevPageUrl,
    this.total,
  });

  factory CurrentPageOfCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentPageOfCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentPageOfCategoryResponseToJson(this);
}
