import '/config/all_imports.dart';

abstract class RemoteSignUpDataSource {
  Future<SignUpResponse> signUp(SignUpRequest request);
}

class RemoteSignUpDataSourceImplementation implements RemoteSignUpDataSource {
  final AppApi _appApi;

  RemoteSignUpDataSourceImplementation(this._appApi);

  @override
  Future<SignUpResponse> signUp(SignUpRequest request) async {
    return await _appApi.signUp(
      request.name,
      request.email,
      request.password,
      request.phone,
    );
  }
}
