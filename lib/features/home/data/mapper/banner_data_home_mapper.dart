import '/config/all_imports.dart';

extension BannerDataHomeMapper on BannerDataHomeResponse {
  toDomain() {
    return BannerDataHomeModel(
      image: image.onNull(),
      category: category,
      id: id.onNull(),
      product: product,
    );
  }
}
