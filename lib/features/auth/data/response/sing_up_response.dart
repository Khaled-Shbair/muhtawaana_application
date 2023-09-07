import '/config/all_imports.dart';

part 'sing_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;
  @JsonKey(name: ApiConstants.data)
  List<DataSignUpResponse>? data;

  SignUpResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
