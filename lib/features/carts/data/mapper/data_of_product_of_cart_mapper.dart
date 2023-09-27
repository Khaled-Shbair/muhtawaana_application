import '/config/all_imports.dart';

extension DataOfProductOfCartMapper on DataOfProductOfCartResponse {
  toDomain() {
    return DataOfProductOfCartModel(
      id: id.onNull(),
      image: image.onNull(),
      name: name.onNull(),
      description: description.onNull(),
      discount: discount.onNull(),
      oldPrice: oldPrice.onNull(),
      inFavorites: inFavorites.onNull(),
      inCart: inCart.onNull(),
      images: images!.map((e) => e.onNull()).toList(),
      price: price.onNull(),
    );
  }
}
