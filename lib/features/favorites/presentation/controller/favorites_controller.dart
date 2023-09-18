import '/config/all_imports.dart';

class FavoritesController extends GetxController with ShowSnackBar {
  static FavoritesController get to => Get.find();
  final FavoritesUseCase _useCase = instance<FavoritesUseCase>();
  bool loading = false;
  List<ProductDataHomeModel> productsFavorites = [];

  @override
  onInit() {
    super.onInit();
    getAllProductsFavorites();
  }

  Future<void> addOrDeleteProductFavorites(int productId) async {
    (await _useCase.execute(FavoritesBaseUseCaseInput(productId: productId)))
        .fold(
      (l) => showSnackBar(l.message, true),
      (r) => getAllProductsFavorites(),
    );
    update();
  }

  void buttonFavorites(int productId) async {
    HomeController.to.buttonFavorites(productId);
    getAllProductsFavorites();
    update();
  }

  Future<void> getAllProductsFavorites() async {
    productsFavorites = [];
    loading = true;
    for (var e in HomeController.to.products) {
      if (e.inFavorites) {
        productsFavorites.add(e);
      }
    }
    update();
    loading = false;
  }
}
