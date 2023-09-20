import '/config/all_imports.dart';

abstract class RemoteEditProfileDataSource {
  Future<EditProfileResponse> editProfile(DataOfEditProfileRequest request);
}

class RemoteEditProfileDataSourceImplementation
    implements RemoteEditProfileDataSource {
  final AppApi _appApi;

  RemoteEditProfileDataSourceImplementation(this._appApi);

  @override
  Future<EditProfileResponse> editProfile(
      DataOfEditProfileRequest request) async {
    return await _appApi.editProfile(
      request.name,
      request.email,
      request.phone,
      request.image,
    );
  }
}
