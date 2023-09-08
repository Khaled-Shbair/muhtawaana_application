import '/config/all_imports.dart';

extension DataHomeMapper on DataHomeResponse {
  toDomain() {
    return DataHomeModel(
      banners: banners!.map<BannerDataHomeModel>((e) => e.toDomain()).toList(),
      products:
          products!.map<ProductDataHomeModel>((e) => e.toDomain()).toList(),
      // ad :ad.onNull(),
    );
  }
}
