import '/config/all_imports.dart';

abstract class RemoteFavoritesDataSource {
  Future<FavoritesResponse> addOrDeleteFavorites(FavoritesRequest request);
}

class RemoteFavoritesDataSourceImplementation
    implements RemoteFavoritesDataSource {
  final AppApi _appApi;

  RemoteFavoritesDataSourceImplementation(this._appApi);

  @override
  Future<FavoritesResponse> addOrDeleteFavorites(
    FavoritesRequest request,
  ) async {
    return await _appApi.addOrDeleteFavoritesProduct(request.productId);
  }
}
