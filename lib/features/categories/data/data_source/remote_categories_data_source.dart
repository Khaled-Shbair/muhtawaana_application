import '/config/all_imports.dart';

abstract class RemoteCategoriesDataSource {
  Future<CategoriesResponse> getCategories();
}

class RemoteCategoriesDataSourceImplementation
    implements RemoteCategoriesDataSource {
  final AppApi _appApi;

  RemoteCategoriesDataSourceImplementation(this._appApi);

  @override
  Future<CategoriesResponse> getCategories() async {
    return await _appApi.getCategories();
  }
}
