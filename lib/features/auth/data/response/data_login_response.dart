import '/config/all_imports.dart';

part 'data_login_response.g.dart';

@JsonSerializable()
class DataLoginResponse {
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

  DataLoginResponse({
    this.token,
    this.email,
    this.phone,
    this.name,
    this.image,
    this.id,
    this.credit,
    this.points,
  });

  factory DataLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$DataLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataLoginResponseToJson(this);
}
