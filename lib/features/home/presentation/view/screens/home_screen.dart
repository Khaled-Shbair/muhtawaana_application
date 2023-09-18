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
              child: Column(
                children: [
                  SizedBox(height: ManagerHeight.h7),
                  const MySearch(isHome: true),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async => await controller.onRefreshPage(),
                      color: ManagerColors.primaryColor,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: ManagerHeight.h10),
                            HomeSlider(
                              sliders: controller.banners,
                              loading: controller.loading,
                            ),
                            TitleOfDepartment(
                              name: ManagerStrings.categories,
                              onTap: controller.buttonMoreCategories,
                            ),
                            const HomeCategory(),
                            TitleOfDepartment(
                              name: ManagerStrings.products,
                              onTap: controller.buttonMoreProducts,
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: ManagerWidth.w16,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: ManagerWidth.w10,
                                mainAxisSpacing: ManagerHeight.h14,
                                childAspectRatio:
                                    ManagerWidth.w162 / ManagerHeight.h258,
                              ),
                              itemCount: controller.loading == false
                                  ? controller.products.length
                                  : 10,
                              itemBuilder: (context, index) {
                                if (controller.loading == false &&
                                    controller.products.isNotEmpty) {
                                  var data = controller.products[index];
                                  return StructureOfViewProduct(
                                    image: data.image,
                                    discount: data.discount,
                                    id: data.id,
                                    inFavorites: data.inFavorites,
                                    name: data.name,
                                    oldPrice: data.oldPrice,
                                    price: data.price,
                                    data: data,
                                    buttonFavorites: () =>
                                        controller.buttonFavorites(data.id),
                                  );
                                } else {
                                  return MainShimmer(
                                    height: ManagerHeight.h258,
                                    width: ManagerWidth.w162,
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
