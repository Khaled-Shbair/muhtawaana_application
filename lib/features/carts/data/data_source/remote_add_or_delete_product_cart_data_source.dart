import '/config/all_imports.dart';

abstract class RemoteAddOrDeleteProductCartDataSource {
  Future<AddOrDeleteProductCartResponse> addOrDeleteProductCart(
    AddOrDeleteProductCartRequest request,
  );
}

class RemoteAddOrDeleteProductCartDataSourceImplementation
    implements RemoteAddOrDeleteProductCartDataSource {
  final AppApi _appApi;

  RemoteAddOrDeleteProductCartDataSourceImplementation(this._appApi);

  @override
  Future<AddOrDeleteProductCartResponse> addOrDeleteProductCart(
    AddOrDeleteProductCartRequest request,
  ) async {
    return await _appApi.addOrDeleteProductCart(request.productId);
  }
}
