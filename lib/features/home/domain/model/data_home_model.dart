import '/config/all_imports.dart';

class DataHomeModel {
  List<BannerDataHomeModel> banners;
  List<ProductDataHomeModel> products;

  // String ad;

  DataHomeModel({
    required this.products,
    required this.banners,
    // required this.ad,
  });
}
