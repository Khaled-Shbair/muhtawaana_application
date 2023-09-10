import '/config/all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: ManagerColors.whiteColor,
            resizeToAvoidBottomInset: false,
            appBar: homeAppBar(
              imageUser: controller.imageUser,
              nameUser: controller.nameUser,
              onPressed: controller.buttonShopInAppBar,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ManagerHeight.h10),
                    HomeSlider(sliders: controller.banners),
                    TitleOfDepartment(
                      name: ManagerStrings.categories,
                      onTap: controller.buttonMoreSections,
                    ),
                    const HomeCategory(),
                    TitleOfDepartment(
                      name: ManagerStrings.products,
                      onTap: controller.buttonMoreProducts,
                    ),
                    HomeProduct(
                      products: controller.products,
                      favoriteButton: controller.favoriteButton,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
