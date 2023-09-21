import '/config/all_imports.dart';

abstract class RemoteChangePasswordDataSource {
  Future<ChangePasswordResponse> changePassword(ChangePasswordRequest request);
}

class RemoteChangePasswordDataSourceImplementation
    implements RemoteChangePasswordDataSource {
  final AppApi _appApi;

  RemoteChangePasswordDataSourceImplementation(this._appApi);

  @override
  Future<ChangePasswordResponse> changePassword(
      ChangePasswordRequest request) async {
    return await _appApi.changePassword(
      request.currentPassword,
      request.newPassword,
    );
  }
}
