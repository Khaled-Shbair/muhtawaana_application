import '/config/all_imports.dart';

abstract class RemoteLoginDataSource {
  Future<LoginResponse> login(LoginRequest request);
}

class RemoteLoginDataSourceImplementation implements RemoteLoginDataSource {
  final AppApi _appApi;

  RemoteLoginDataSourceImplementation(this._appApi);

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    return await _appApi.login(request.email, request.password);
  }
}
