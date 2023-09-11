import '/config/all_imports.dart';

abstract class RemoteCategoryDetailsDataSource {
  Future<CategoryDetailsResponse> getCategoryDetails(int id);
}

class RemoteCategoryDetailsDataSourceImplementation
    implements RemoteCategoryDetailsDataSource {
  final AppApi _appApi;

  RemoteCategoryDetailsDataSourceImplementation(this._appApi);

  @override
  Future<CategoryDetailsResponse> getCategoryDetails(int id) async {
    return await _appApi.getCategoryDetails(id);
  }
}
