import '/config/all_imports.dart';

abstract class RemoteHomeDataSource {
  Future<HomeResponse> getHomeData();
}

class RemoteHomeDataSourceImplementation implements RemoteHomeDataSource {
  final AppApi _appApi;

  RemoteHomeDataSourceImplementation(this._appApi);

  @override
  Future<HomeResponse> getHomeData() async {
    return await _appApi.getHomeData();
  }
}
