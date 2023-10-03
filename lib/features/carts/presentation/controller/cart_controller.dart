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
      (l) {},
      (r) {
        if (isProductDetail == true) {
          showSnackBar(r.message);
        }
      },
    );
    update();
  }

  Future<void> updateQuantityOfProductCart(int id, int quantity) async {
    (await _updateQuantityOfProductCartUseCase.execute(
      UpdateQuantityOfProductCartBaseUseCaseInput(id: id, quantity: quantity),
    ))
        .fold(
      (l) {},
      (r) {
        for (var e in allCartProducts) {
          if (e.id == id) {
            e.quantity = quantity;
          }
        }
      },
    );
    update();
  }

  Future<void> getAllCartProducts() async {
    loading = true;
    (await _getAllCartProductsUseCase.execute()).fold(
      (l) {},
      (r) {
        allCartProducts = [];
        totalPrice = 0;
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

  void decreaseButton(int id) {
    for (var e in allCartProducts) {
      if (e.id == id && e.quantity > 1) {
        e.quantity--;
        totalPrice -= e.product.price;
        updateQuantityOfProductCart(id, e.quantity);
      }
    }
    update();
  }

  void increaseButton(int id) {
    for (var e in allCartProducts) {
      if (e.id == id) {
        e.quantity++;
        totalPrice += e.product.price;
        updateQuantityOfProductCart(id, e.quantity);
      }
    }

    update();
  }

  void backButton() async {
    finishPayment();
  }

  void buyButton() async {
    await PaymentController.to.makePayment(totalPrice);
  }

  void clearCart() async {
    loading = true;
    for (var e in allCartProducts) {
      await addOrDeleteProductCart(e.product.id);
    }
    Get.back();
    allCartProducts.clear();
    backButton();
    totalPrice = 0;
    loading = false;
    update();
  }
}
