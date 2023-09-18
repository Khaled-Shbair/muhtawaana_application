import '/config/all_imports.dart';

class ProductsOfCategoryScreen extends StatelessWidget {
  const ProductsOfCategoryScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(text: ManagerStrings.categoryProducts),
          body: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: ManagerWidth.w16,
            ),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: ManagerWidth.w10,
              mainAxisSpacing: ManagerHeight.h14,
              childAspectRatio: ManagerWidth.w162 / ManagerHeight.h258,
            ),
            itemCount: controller.loading == false
                ? controller.categoryDetails.length
                : 10,
            itemBuilder: (context, index) {
              if (controller.loading == true) {
                return MainShimmer(
                  height: ManagerHeight.h258,
                  width: ManagerWidth.w162,
                );
              } else {
                var data = controller.categoryDetails[index];
                return StructureOfViewProduct(
                  image: data.image,
                  discount: data.discount,
                  id: data.id,
                  inFavorites: data.inFavorites,
                  name: data.name,
                  oldPrice: data.oldPrice,
                  price: data.price,
                  data: data,
                  buttonFavorites: () {},
                  // buttonFavorites: () => controller.buttonFavorites(data.id),
                );
              }
            },
          ),
        );
      },
    );
  }
}
