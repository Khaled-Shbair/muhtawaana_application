import '/config/all_imports.dart';

abstract class RemoteCategoryDataSource {
  Future<CategoryResponse> getCategory(CategoryRequest request);
}

class RemoteCategoryDataSourceImplementation
    implements RemoteCategoryDataSource {
  final AppApi _appApi;

  RemoteCategoryDataSourceImplementation(this._appApi);

  @override
  Future<CategoryResponse> getCategory(CategoryRequest request) async {
    return await _appApi.getCategory(request.id);
  }
}
