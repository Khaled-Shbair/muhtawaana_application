import '/config/all_imports.dart';

class HomeController extends GetxController with ShowSnackBar {
  final HomeUseCase _useCase = instance<HomeUseCase>();
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();
  bool loading = false;
  final List home = [];
  List<ProductDataHomeModel> products = [];
  List<BannerDataHomeModel> banners = [];
  late PageController controller;
  int currentImage = 0;

  @override
  onInit() {
    super.onInit();
    getHomeData();
    controller = PageController();
  }

  String get imageUser => _sharedPreferences.getImage;

  String get nameUser => _sharedPreferences.getName;

  Future<void> getHomeData() async {
    loading = true;
    (await _useCase.execute()).fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) {
        products = r.data.products;
        banners = r.data.banners;
        loading = false;
      },
    );
    update();
  }

  void changeCurrentImage(int value) {
    currentImage = value;
    update();
  }

  void previousImage() {
    controller.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    update();
  }

  bool isNotFirstImage() => currentImage != 0;

  bool isNotLastImage(int length) => currentImage != length - 1;

  void nextImage() {
    controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    update();
  }

  void buttonShopInAppBar() {}

  void buttonMoreCategories() async {
    await Get.toNamed(Routes.categoriesScreen);
  }

  void buttonMoreProducts() {}

  void goToProductDetails(int id) async {
    await Get.toNamed(Routes.productDetailsScreen, arguments: id);
  }

  void addToFavorites() {}
  void addToCart() {}
}
