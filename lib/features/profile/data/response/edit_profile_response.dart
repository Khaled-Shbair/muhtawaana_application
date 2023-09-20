import '/config/all_imports.dart';

part 'edit_profile_response.g.dart';

@JsonSerializable()
class EditProfileResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  DataOfEditProfileResponse? data;

  EditProfileResponse({
    this.status,
    this.message,
    this.data,
  });

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$EditProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EditProfileResponseToJson(this);
}
