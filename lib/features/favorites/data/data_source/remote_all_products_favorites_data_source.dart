import '/config/all_imports.dart';

abstract class RemoteAllProductsFavoritesDataSource {
  Future<AllProductsFavoritesResponse> getAllProductsFavorites();
}

class RemoteAllProductsFavoritesDataSourceImplementation
    implements RemoteAllProductsFavoritesDataSource {
  final AppApi _appApi;

  RemoteAllProductsFavoritesDataSourceImplementation(this._appApi);

  @override
  Future<AllProductsFavoritesResponse> getAllProductsFavorites() async {
    return await _appApi.getAllProductsFavorites();
  }
}
