import '/config/all_imports.dart';

class CartController extends GetxController with ShowSnackBar {
  static CartController get to => Get.find();
  final AddOrDeleteProductCartUseCase _addOrDeleteProductCartUseCase =
      instance<AddOrDeleteProductCartUseCase>();
  final GetAllCartProductsUseCase _getAllCartProductsUseCase =
      instance<GetAllCartProductsUseCase>();
  final UpdateQuantityOfProductCartUseCase _updateQuantityOfProductCartUseCase =
      instance<UpdateQuantityOfProductCartUseCase>();
  bool loading = false;
  List<ListOfProductsOfCartModel> allCartProducts = [];
  double totalPrice = 0;
  double quantity = 1;

  @override
  onInit() {
    super.onInit();
    getAllCartProducts();
  }

  Future<void> addOrDeleteProductCart(int productId,
      [bool? isProductDetail]) async {
    (await _addOrDeleteProductCartUseCase.execute(
      AddOrDeleteProductCartBaseUseCaseInput(productId: productId),
    ))
        .fold(
      (l) {
        if (isProductDetail == true) {
          showSnackBar(l.message, true);
        }
      },
      (r) {
        if (isProductDetail == true) {
          showSnackBar(r.message);
        }
      },
    );
    update();
  }

  Future<void> updateQuantityOfProductCart(int id, int quantity) async {
    loading = true;
    (await _updateQuantityOfProductCartUseCase.execute(
      UpdateQuantityOfProductCartBaseUseCaseInput(id: id, quantity: quantity),
    ))
        .fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) {
        for (var e in allCartProducts) {
          if (e.id == id) {
            e.quantity = quantity;
            totalPrice += e.product.price * quantity;
          }
        }
        loading = false;
      },
    );
    update();
  }

  Future<void> getAllCartProducts() async {
    loading = true;
    (await _getAllCartProductsUseCase.execute()).fold(
      (l) {
        showSnackBar(l.message, true);
      },
      (r) {
        allCartProducts = [];
        allCartProducts = r.data.cartItems;
        totalPrice = r.data.total;
        loading = false;
      },
    );
    update();
  }

  void deleteButton(int id) async {
    for (int i = 0; i < allCartProducts.length; i++) {
      if (allCartProducts[i].product.id == id) {
        allCartProducts.removeAt(i);
        addOrDeleteProductCart(id);
      }
    }
    update();
  }

  void decreaseButton() {}

  void increaseButton() {}
}
