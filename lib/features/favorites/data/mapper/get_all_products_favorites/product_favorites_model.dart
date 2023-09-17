import '/config/all_imports.dart';

extension ProductFavoritesMapper on ProductFavoritesResponse {
  toDomain() {
    return ProductFavoritesModel(
      id: id.onNull(),
      product: product!.toDomain(),
    );
  }
}
