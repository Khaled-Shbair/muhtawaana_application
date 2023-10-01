import '/config/all_imports.dart';

class MainController extends GetxController {
  late PersistentTabController controller;
  List<Widget> screens = [
    const HomeScreen(),
    const FavoritesScreen(),
    NotificationsScreens(),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> items = [
    bottomNavBarItem(Icons.home_outlined, ManagerStrings.home),
    bottomNavBarItem(Icons.favorite_border_outlined, ManagerStrings.favorites),
    bottomNavBarItem(
        Icons.notifications_outlined, ManagerStrings.notifications),
    bottomNavBarItem(Icons.person_outline, ManagerStrings.profile),
  ];

  @override
  void onInit() {
    super.onInit();
    controller = PersistentTabController();
  }
}
