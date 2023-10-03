import '/config/all_imports.dart';

class MyBodyOfFavoritesScreen extends StatelessWidget {
  const MyBodyOfFavoritesScreen({
    required this.controller,
    super.key,
  });

  final FavoritesController controller;

  @override
  Widget build(BuildContext context) {
    if (controller.productsFavorites.isNotEmpty) {
      return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: ManagerWidth.w16,
          vertical: ManagerHeight.h14,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: ManagerWidth.w10,
          mainAxisSpacing: ManagerHeight.h14,
          childAspectRatio: ManagerWidth.w162 / ManagerHeight.h258,
        ),
        itemCount: controller.loading == false
            ? controller.productsFavorites.length
            : 10,
        itemBuilder: (context, index) {
          if (controller.loading == true) {
            return MainShimmer(
              height: ManagerHeight.h258,
              width: ManagerWidth.w162,
            );
          } else {
            var data = controller.productsFavorites[index];
            return StructureOfViewProduct(
              image: data.image,
              discount: data.discount,
              id: data.id,
              inFavorites: data.inFavorites,
              name: data.name,
              oldPrice: data.oldPrice,
              price: data.price,
              data: data,
              buttonFavorites: () => controller.buttonFavorites(data.id),
            );
          }
        },
      );
    } else {
      return NoData(text: ManagerStrings.noFavoriteProducts);
    }
  }
}
