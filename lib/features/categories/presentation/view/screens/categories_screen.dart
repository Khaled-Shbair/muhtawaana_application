import '/config/all_imports.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.whiteColor,
      appBar: AppBar(
        leading: const MyBackIcon(),
        backgroundColor: ManagerColors.whiteColor,
        elevation: AppConstants.elevationAppBar,
        title: Text(
          ManagerStrings.categories,
          style: titleAppBarInCategoriesScreen(),
        ),
      ),
      body: GetBuilder<CategoriesController>(
        builder: (controller) {
          return GridView.builder(
            padding: EdgeInsetsDirectional.only(
              start: ManagerWidth.w16,
              end: ManagerWidth.w16,
              top: ManagerHeight.h16,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: ManagerWidth.w20,
              mainAxisSpacing: ManagerHeight.h20,
              childAspectRatio: ManagerWidth.w162 / ManagerHeight.h152,
            ),
            itemCount: controller.loading ? 8 : controller.categories.length,
            itemBuilder: (context, index) {
              var data = controller.categories[index];
              return InkWell(
                onTap: () => controller.onTapOnCategory(data.id),
                highlightColor: ManagerColors.transparentColor,
                splashColor: ManagerColors.transparentColor,
                child: Container(
                  decoration: BoxDecoration(
                    color: ManagerColors.whiteColor,
                    borderRadius: BorderRadius.circular(ManagerRadius.r10),
                    boxShadow: const [
                      BoxShadow(
                        color: ManagerColors.shadow_09,
                        offset: Offset(
                          AppConstants.xOffsetOfContainerInCategoriesScreen,
                          AppConstants.yOffsetOfContainerInCategoriesScreen,
                        ),
                        blurRadius: AppConstants
                            .blurRadiusOfContainerInCategoriesScreen,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(data.image),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: double.infinity,
                    width: double.infinity,
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: ManagerWidth.w4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black38.withOpacity(.3),
                      borderRadius: BorderRadius.circular(ManagerRadius.r10),
                    ),
                    child: Text(
                      data.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: ManagerFontFamily.roboto,
                        color: ManagerColors.whiteColor,
                        fontWeight: ManagerFontWeight.w400,
                        fontSize: ManagerFontSize.s14,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
