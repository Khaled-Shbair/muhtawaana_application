import '/config/all_imports.dart';

part 'logout_response.g.dart';

@JsonSerializable()
class LogoutResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;

  LogoutResponse({
    this.status,
    this.message,
  });

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutResponseToJson(this);
}
