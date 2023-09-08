import '/config/all_imports.dart';

class DataHomeModel {
  List<BannerDataHomeModel> banners;
  List<ProductDataHomeModel> products;

  DataHomeModel({
    required this.products,
    required this.banners,
  });
}
