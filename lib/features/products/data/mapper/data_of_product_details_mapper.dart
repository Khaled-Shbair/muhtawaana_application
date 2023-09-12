import '/config/all_imports.dart';

extension DataOfProductDetailsMapper on DataOfProductDetailsResponse {
  toDomain() {
    return DataOfProductDetailsModel(
      image: image.onNull(),
      name: name.onNull(),
      id: id.onNull(),
      price: price.onNull(),
      oldPrice: oldPrice.onNull(),
      discount: discount.onNull(),
      inCart: inCart.onNull(),
      inFavorites: inFavorites.onNull(),
      description: description.onNull(),
      images: images!.map((e) => e.onNull()).toList(),
    );
  }
}
