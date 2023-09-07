import '/config/all_imports.dart';

part 'data_sign_up_response.g.dart';

@JsonSerializable()
class DataSignUpResponse {
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

  DataSignUpResponse({
    this.token,
    this.email,
    this.phone,
    this.name,
    this.image,
    this.id,
    this.credit,
    this.points,
  });

  factory DataSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$DataSignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataSignUpResponseToJson(this);
}
