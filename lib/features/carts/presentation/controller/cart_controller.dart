import '/config/all_imports.dart';

class CartController extends GetxController with ShowSnackBar {
  static CartController get to => Get.find();
  final AddOrDeleteProductCartUseCase _useCase =
      instance<AddOrDeleteProductCartUseCase>();
  bool loading = false;

  Future<void> addOrDeleteProductCart(int productId) async {
    (await _useCase.execute(
      AddOrDeleteProductCartBaseUseCaseInput(productId: productId),
    ))
        .fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) {},
    );
    update();
  }
}
