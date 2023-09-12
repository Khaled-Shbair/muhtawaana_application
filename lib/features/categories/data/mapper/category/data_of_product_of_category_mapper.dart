import '/config/all_imports.dart';

extension DataOfProductOfCategoryMapper on DataOfProductOfCategoryResponse {
  toDomain() {
    return DataOfProductOfCategoryModel(
      image: image.onNull(),
      name: name.onNull(),
      id: id.onNull(),
      price: price.onNull(),
      description: description.onNull(),
      discount: discount.onNull(),
      images: images!.map((e) => e.onNull()).toList(),
      inCart: inCart.onNull(),
      inFavorites: inFavorites.onNull(),
      oldPrice: oldPrice.onNull(),
    );
  }
}
