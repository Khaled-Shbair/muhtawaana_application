import '/config/all_imports.dart';

abstract class RemoteLogoutDataSource {
  Future<LogoutResponse> logout();
}

class RemoteLogoutDataSourceImplementation implements RemoteLogoutDataSource {
  final AppApi _appApi;

  RemoteLogoutDataSourceImplementation(this._appApi);

  @override
  Future<LogoutResponse> logout() async {
    return await _appApi.logout();
  }
}
