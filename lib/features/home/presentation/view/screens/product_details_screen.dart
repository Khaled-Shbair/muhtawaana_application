import '/config/all_imports.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(this.data, {super.key});

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(
            actions: [
              ElevatedButton(
                onPressed: () async => controller.buttonFavorites(data.id),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: ManagerColors.primaryColor),
                child: Icon(
                  Icons.favorite,
                  color: data.inFavorites
                      ? ManagerColors.redColor
                      : ManagerColors.whiteColor,
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Row(
                  children: [
                    ButtonMoveBetweenImages(
                      visible: controller.isNotFirstImage(),
                      onPressed: controller.previousImage,
                      isPrevious: true,
                    ),
                    Expanded(
                      child: PageView(
                        controller: controller.controller,
                        onPageChanged: (value) =>
                            controller.changeCurrentImage(value),
                        children: [
                          ...List.generate(
                            data.images.length,
                            (index) => Image.network(
                              data.images[index],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonMoveBetweenImages(
                      visible: controller.isNotLastImage(data.images.length),
                      onPressed: controller.nextImage,
                    ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h7),
              Expanded(
                flex: 2,
                child: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.name,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: nameOfProductInProductDetails(),
                      ),
                      SizedBox(height: ManagerHeight.h10),
                      Text(
                        '${ManagerStrings.description} :',
                        style: titleDescriptionOfProductInProductDetails(),
                      ),
                      SizedBox(height: ManagerHeight.h10),
                      Expanded(
                        child: SizedBox(
                          child: Scrollbar(
                            radius: Radius.circular(ManagerRadius.r5),
                            child: SingleChildScrollView(
                              padding: EdgeInsetsDirectional.only(
                                start: ManagerWidth.w4,
                              ),
                              child: Text(
                                data.description,
                                style: descriptionOfProductInProductDetails(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: ManagerHeight.h4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${ManagerStrings.price}:',
                                style: titlePriceOfProductInProductDetails(),
                              ),
                              SizedBox(height: ManagerHeight.h2),
                              Row(
                                children: [
                                  Text(
                                    '\$${data.price.toStringAsFixed(0)}',
                                    style: priceOfProductInProductDetails(),
                                  ),
                                  if (data.discount != 0) ...{
                                    SizedBox(width: ManagerWidth.w4),
                                    Text(
                                      data.price.toString(),
                                      style:
                                          oldPriceOfProductInProductDetails(),
                                    ),
                                  },
                                ],
                              ),
                            ],
                          ),
                          MainButton(
                            width: ManagerWidth.w132,
                            height: ManagerHeight.h43,
                            radius: ManagerRadius.r10,
                            onPressed: controller.addToCart,
                            child: Text(
                              ManagerStrings.addToCart,
                              style: addToCartInProductDetails(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ManagerHeight.h20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
