import '/config/all_imports.dart';

abstract class RemoteGetAllCartProductsDataSource {
  Future<GetAllCartProductsResponse> getAllCartProducts();
}

class RemoteGetAllCartProductsDataSourceImplementation
    implements RemoteGetAllCartProductsDataSource {
  final AppApi _appApi;

  RemoteGetAllCartProductsDataSourceImplementation(this._appApi);

  @override
  Future<GetAllCartProductsResponse> getAllCartProducts() async {
    return await _appApi.getAllCartProducts();
  }
}
