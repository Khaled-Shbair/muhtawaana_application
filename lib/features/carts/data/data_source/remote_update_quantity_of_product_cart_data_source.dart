import '/config/all_imports.dart';

abstract class RemoteUpdateQuantityOfProductCartDataSource {
  Future<UpdateQuantityOfProductCartResponse> updateQuantityOfProductCart(
    UpdateQuantityOfProductCartRequest request,
  );
}

class RemoteUpdateQuantityOfCartDataSourceImplementation
    implements RemoteUpdateQuantityOfProductCartDataSource {
  final AppApi _appApi;

  RemoteUpdateQuantityOfCartDataSourceImplementation(this._appApi);

  @override
  Future<UpdateQuantityOfProductCartResponse> updateQuantityOfProductCart(
    UpdateQuantityOfProductCartRequest request,
  ) async {
    return await _appApi.updateProductOfCart(
      request.id,
      request.quantity,
    );
  }
}
