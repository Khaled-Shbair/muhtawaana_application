import '/config/all_imports.dart';

extension DataOfProductFavoritesMapper on DataOfProductFavoritesResponse {
  toDomain() {
    return DataOfProductFavoritesModel(
      image: image.onNull(),
      oldPrice: oldPrice.onNull(),
      discount: discount.onNull(),
      description: description.onNull(),
      id: id.onNull(),
      name: name.onNull(),
      price: price.onNull(),
    );
  }
}
