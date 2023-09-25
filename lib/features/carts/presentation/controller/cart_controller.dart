import '/config/all_imports.dart';

class CartController extends GetxController with ShowSnackBar {
  static CartController get to => Get.find();
  final AddOrDeleteProductCartUseCase _addOrDeleteProductCartUseCase =
      instance<AddOrDeleteProductCartUseCase>();
  final GetAllCartProductsUseCase _getAllCartProductsUseCase =
      instance<GetAllCartProductsUseCase>();
  bool loading = false;
  List allCartProducts = [];
  double totalPrice = 0;

  Future<void> addOrDeleteProductCart(int productId) async {
    (await _addOrDeleteProductCartUseCase.execute(
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

  Future<void> getAllCartProducts() async {
    allCartProducts = [];
    loading = true;
    (await _getAllCartProductsUseCase.execute()).fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) {
        allCartProducts = r.data.cartItems;
        totalPrice = r.data.total;
        loading = false;
      },
    );

    update();
  }
}
