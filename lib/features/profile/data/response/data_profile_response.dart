import '/config/all_imports.dart';

part 'data_profile_response.g.dart';

@JsonSerializable()
class DataProfileResponse {
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.name)
  String? name;
  @JsonKey(name: ApiConstants.email)
  String? email;
  @JsonKey(name: ApiConstants.phone)
  String? phone;
  @JsonKey(name: ApiConstants.image)
  String? image;
  @JsonKey(name: ApiConstants.token)
  String? token;
  @JsonKey(name: ApiConstants.points)
  int? points;
  @JsonKey(name: ApiConstants.credit)
  int? credit;

  DataProfileResponse({
    this.id,
    this.name,
    this.image,
    this.credit,
    this.phone,
    this.email,
    this.points,
    this.token,
  });

  factory DataProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$DataProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataProfileResponseToJson(this);
}
