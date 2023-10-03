import '/config/all_imports.dart';

abstract class RemoteProfileDataSource {
  Future<ProfileResponse> getProfileData();
}

class RemoteProfileDataSourceImplementation implements RemoteProfileDataSource {
  final AppApi _appApi;

  RemoteProfileDataSourceImplementation(this._appApi);

  @override
  Future<ProfileResponse> getProfileData() async {
    return await _appApi.getProfileData();
  }
}
