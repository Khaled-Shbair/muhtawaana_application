import '/config/all_imports.dart';

class HomeController extends GetxController with ShowSnackBar {
  static HomeController get to => Get.find();
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();
  final HomeUseCase _useCase = instance<HomeUseCase>();

  late TextEditingController searchController;
  var formKey = GlobalKey<FormState>();
  bool loading = false;

  List<ProductDataHomeModel> searchProducts = [];
  List<ProductDataHomeModel> products = [];
  List<BannerDataHomeModel> banners = [];
  late PageController controller;
  int currentImage = 0;

  @override
  onInit() {
    super.onInit();
    getHomeData();
    controller = PageController();
    searchController = TextEditingController();
  }

  String get imageUser => _sharedPreferences.getImage;

  String get nameUser => _sharedPreferences.getName;

  Future<void> getHomeData() async {
    products = [];
    banners = [];
    loading = true;
    (await _useCase.execute()).fold(
      (l) {
        getHomeData();
        CartController.to.getAllCartProducts();
        showSnackBar(l.message, true);
      },
      (r) {
        products = r.data.products;
        banners = r.data.banners;
        CategoriesController.to.getCategories();
        loading = false;
        FavoritesController.to.getAllProductsFavorites();
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

  void buttonShopInAppBar() {
    Get.toNamed(Routes.cartScreen);
  }

  void buttonMoreCategories() async {
    await Get.toNamed(Routes.categoriesScreen);
  }

  void buttonMoreProducts() {}

  void goToProductDetails(int id) async {
    await Get.toNamed(Routes.productDetailsScreen, arguments: id);
  }

  void addToCart(int productId) async {
    await CartController.to.addOrDeleteProductCart(productId, true);
    await CartController.to.getAllCartProducts();
  }

  void buttonFavorites(int productId) {
    for (var e in products) {
      if (e.id == productId) {
        e.inFavorites = !e.inFavorites;
      }
    }
    FavoritesController.to.addOrDeleteProductFavorites(productId);
    update();
  }

  Future<void> onRefreshPage() async {
    getHomeData();
  }

  void clearSearchProduct() {
    searchController.clear();
    searchProducts.clear();
    update();
  }

  void searchProduct(String value) {
    searchProducts = [];
    if (searchController.text.isNotEmpty) {
      for (var e in products) {
        if (e.name.toLowerCase().contains(value.toLowerCase())) {
          searchProducts.add(e);
        }
      }
    } else {
      searchProducts = [];
    }
    update();
  }
}
