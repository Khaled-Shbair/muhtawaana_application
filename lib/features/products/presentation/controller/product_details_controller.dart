import '/config/all_imports.dart';

class ProductDetailsController extends GetxController {
  static ProductDetailsController get to => Get.find();
  final ProductDetailsUseCase _useCase = instance<ProductDetailsUseCase>();
  late ProductDetailsModel productDetails;

  bool loading = false;

  Future<void> getProductDetails(int id) async {
    loading = true;
    (await _useCase.execute(ProductDetailsBaseUseCaseInput(id))).fold(
      (l) {},
      (r) {
        productDetails = r;
        loading = false;
      },
    );
    update();
  }

  void addToCart() {}

  void addToFavorites() {}
}
