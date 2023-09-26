import '/config/all_imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(text: ManagerStrings.cart),
          body: BodyOfCartScreen(controller: controller),
        );
      },
    );
  }
}
