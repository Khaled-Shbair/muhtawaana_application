import '/config/all_imports.dart';

class HomeController extends GetxController {
  final HomeUseCase _useCase = instance<HomeUseCase>();
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();
  bool loading = false;
  final List home = [];
  List<ProductDataHomeModel> products = [];
  List<BannerDataHomeModel> banners = [];

  @override
  onInit() {
    super.onInit();
    getHomeData();
  }

  String get imageUser => _sharedPreferences.getImage;

  String get nameUser => _sharedPreferences.getName;

  Future<void> getHomeData() async {
    loading = true;
    (await _useCase.execute()).fold(
      (l) {},
      (r) {
        products = r.data.products;
        banners = r.data.banners;
        loading = false;
      },
    );
    update();
  }

  void buttonShopInAppBar() {}

  void buttonMoreSections() {}
  void buttonMoreProducts() {}

  void favoriteButton() {}
}
