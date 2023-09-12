import '/config/all_imports.dart';

abstract class RemoteProductDetailsDataSource {
  Future<ProductDetailsResponse> getProductDetails(
    ProductDetailsRequest request,
  );
}

class RemoteProductDetailsDataSourceImplementation
    implements RemoteProductDetailsDataSource {
  final AppApi _appApi;

  RemoteProductDetailsDataSourceImplementation(this._appApi);

  @override
  Future<ProductDetailsResponse> getProductDetails(
    ProductDetailsRequest request,
  ) async {
    return await _appApi.getProductDetails(request.id);
  }
}
