import '/config/all_imports.dart';

extension BannerDataHomeMapper on BannerDataHomeResponse {
  toDomain() {
    return BannerDataHomeModel(
      image: image.onNull(),
      category: category.onNull(),
      id: id.onNull(),
      product: product.onNull(),
    );
  }
}
