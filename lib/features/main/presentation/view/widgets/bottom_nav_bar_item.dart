import '/config/all_imports.dart';

PersistentBottomNavBarItem bottomNavBarItem(IconData icon, String title) {
  return PersistentBottomNavBarItem(
    icon: Icon(icon),
    title: (title),
    activeColorPrimary: ManagerColors.primaryColor,
    inactiveColorPrimary: ManagerColors.c12,
    activeColorSecondary: ManagerColors.whiteColor,
    textStyle: textStyleInBottomNavBarItem(),
  );
}
