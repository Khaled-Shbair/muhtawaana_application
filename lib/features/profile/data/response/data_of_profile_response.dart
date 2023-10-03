import '/config/all_imports.dart';

part 'data_of_profile_response.g.dart';

@JsonSerializable()
class DataOfProfileResponse {
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

  DataOfProfileResponse({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.token,
    this.credit,
    this.points,
  });

  factory DataOfProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOfProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataOfProfileResponseToJson(this);
}
