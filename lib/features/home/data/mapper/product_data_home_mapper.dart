import '/config/all_imports.dart';

extension ProductDataHomeMapper on ProductDataHomeResponse {
  toDomain() {
    return ProductDataHomeModel(
      image: image.onNull(),
      inFavorites: inFavorites.onNull(),
      inCart: inCart.onNull(),
      images: images!.map((e) => e.onNull()).toList(),
      discount: discount.onNull(),
      description: description.onNull(),
      oldPrice: oldPrice.onNull(),
      price: price.onNull(),
      name: name.onNull(),
      id: id.onNull(),
    );
  }
}
