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
          body: StructureOfViewProduct(
            favoriteButton: controller.favoriteButton,
            loading: controller.loading,
            products: controller.categoryDetails,
          ),
        );
      },
    );
  }
}
