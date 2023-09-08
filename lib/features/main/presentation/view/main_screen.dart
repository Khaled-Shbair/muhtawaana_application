import '/config/all_imports.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return PersistentTabView(
          context,
          controller: controller.controller,
          screens: controller.screens,
          items: controller.items,
          backgroundColor: ManagerColors.whiteColor,
          navBarHeight: ManagerHeight.h70,
          navBarStyle: NavBarStyle.style7,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(ManagerRadius.r8),
              topRight: Radius.circular(ManagerRadius.r8),
            ),
            boxShadow: [
              const BoxShadow(
                color: ManagerColors.shadow_15,
                blurRadius: AppConstants.blurRadiusOfBottomNavBarInMainScreen,
                offset: Offset(
                  AppConstants.xOffsetOfBottomNavBarInMainScreen,
                  AppConstants.yOffsetOfBottomNavBarInMainScreen,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
