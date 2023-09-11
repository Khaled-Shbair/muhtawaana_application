import '/config/all_imports.dart';

abstract class RemoteCategoryDetailsDataSource {
  Future<CategoryDetailsResponse> getCategoryDetails(
      CategoryDetailsRequest request);
}

class RemoteCategoryDetailsDataSourceImplementation
    implements RemoteCategoryDetailsDataSource {
  final AppApi _appApi;

  RemoteCategoryDetailsDataSourceImplementation(this._appApi);

  @override
  Future<CategoryDetailsResponse> getCategoryDetails(
      CategoryDetailsRequest request) async {
    return await _appApi.getCategoryDetails(request.id);
  }
}
