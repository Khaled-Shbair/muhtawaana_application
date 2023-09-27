import '/config/all_imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(text: ManagerStrings.cart),
          body: Column(
            children: [
              Expanded(child: BodyOfCartScreen(controller: controller)),
              Container(
                height: ManagerHeight.h70,
                padding: EdgeInsetsDirectional.only(
                  start: ManagerWidth.w16,
                  end: ManagerWidth.w10,
                ),
                decoration: BoxDecoration(
                  color: ManagerColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ManagerRadius.r20),
                    topLeft: Radius.circular(ManagerRadius.r20),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: ManagerColors.shadow_15,
                      offset: Offset(
                        AppConstants.xOffsetOfContainerInCartScreen,
                        AppConstants.yOffsetOfContainerInCartScreen,
                      ),
                      blurRadius:
                          AppConstants.blurRadiusOfContainerInCartScreen,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${ManagerStrings.total}: ',
                          style: totalOfProductInCartScreen(),
                        ),
                        Text(
                          '\$${controller.totalPrice}',
                          style: totalOfProductInCartScreen(true),
                        ),
                      ],
                    ),
                    MainButton(
                      onPressed: () => controller.buyButton(),
                      text: ManagerStrings.buy,
                      width: ManagerWidth.w100,
                      height: ManagerHeight.h36,
                      radius: ManagerRadius.r20,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
