import '/config/all_imports.dart';

class BodyOfCartScreen extends StatelessWidget {
  const BodyOfCartScreen({
    required this.controller,
    super.key,
  });

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    if (controller.allCartProducts.isNotEmpty) {
      return ListView.separated(
        padding: EdgeInsetsDirectional.only(
          start: ManagerWidth.w16,
          end: ManagerWidth.w16,
          top: ManagerHeight.h14,
        ),
        itemCount: controller.allCartProducts.isNotEmpty
            ? controller.allCartProducts.length
            : 8,
        separatorBuilder: (context, index) =>
            SizedBox(height: ManagerHeight.h10),
        itemBuilder: (context, index) {
          var data = controller.allCartProducts[index];
          if (controller.loading == true) {
            return MainShimmer(
              height: ManagerHeight.h126,
              width: double.infinity,
            );
          } else {
            return StructureOfViewProductCart(
              deleteButton: () => controller.deleteButton(data.product.id),
              decreaseButton: () => controller.decreaseButton(),
              increaseButton: () => controller.increaseButton(),
              data: data.product,
              quantity: data.quantity,
            );
          }
        },
      );
    } else {
      return const EmptyCart();
    }
  }
}
