import '/config/all_imports.dart';

class FavoritesController extends GetxController with ShowSnackBar {
  static FavoritesController get to => Get.find();
  final FavoritesUseCase _useCase = instance<FavoritesUseCase>();
  final AllProductsFavoritesUseCase _allProductsFavoritesUseCase =
      instance<AllProductsFavoritesUseCase>();
  List<ProductFavoritesModel> productsFavorites = [];
  bool loading = false;

  @override
  onInit() {
    super.onInit();
    getAllProductsFavorites();
  }

  Future<void> addOrDeleteProductFavorites(int productId) async {
    (await _useCase.execute(FavoritesBaseUseCaseInput(productId: productId)))
        .fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) async {
        showSnackBar(r.message);
        await getAllProductsFavorites();
      },
    );
    update();
  }

  Future<void> getAllProductsFavorites() async {
    loading = true;
    productsFavorites = [];
    (await _allProductsFavoritesUseCase.execute()).fold(
      (l) {},
      (r) {
        productsFavorites = r.data.data;
        loading = false;
      },
    );
    update();
  }
}
