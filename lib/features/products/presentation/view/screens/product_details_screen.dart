import '/config/all_imports.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailsController>(
      builder: (controller) {
        var data = controller.productDetails.data;
        return Scaffold(
          appBar: myAppBar(data.name),
          body: Column(
            children: [
              Container(
                padding: EdgeInsetsDirectional.only(
                  start: ManagerWidth.w16,
                  end: ManagerWidth.w16,
                  top: ManagerHeight.h24,
                ),
                decoration: BoxDecoration(
                  color: ManagerColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ManagerRadius.r30),
                    topLeft: Radius.circular(ManagerRadius.r30),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: ManagerColors.shadow_09,
                      offset: Offset(
                        AppConstants.xOffsetOfContainerInProductDetails,
                        AppConstants.yOffsetOfContainerInProductDetails,
                      ),
                      blurRadius:
                          AppConstants.blurRadiusOfContainerInProductDetails,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      data.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: nameOfProductInProductDetails(),
                    ),
                    SizedBox(height: ManagerHeight.h20),
                    Text(
                      ManagerStrings.description,
                      style: titleDescriptionOfProductInProductDetails(),
                    ),
                    SizedBox(height: ManagerHeight.h10),
                    SizedBox(
                      child: Text(
                        data.description,
                        style: descriptionOfProductInProductDetails(),
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h20),
                    Text(
                      ManagerStrings.price,
                      style: titlePriceOfProductInProductDetails(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          data.price.toString(),
                          style: priceOfProductInProductDetails(),
                        ),
                        if (data.discount != 0) ...{
                          SizedBox(height: ManagerWidth.w4),
                          Text(
                            data.price.toString(),
                            style: oldPriceOfProductInProductDetails(),
                          ),
                        },
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MainButton(
                            onPressed: controller.addToFavorites,
                            text: ManagerStrings.addToFavorites,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w16),
                        Expanded(
                          child: MainButton(
                            onPressed: controller.addToCart,
                            text: ManagerStrings.addToCart,
                          ),
                        ),
                      ],
                    ),
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
