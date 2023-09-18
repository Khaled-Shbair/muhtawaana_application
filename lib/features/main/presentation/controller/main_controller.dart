import '/config/all_imports.dart';

class MainController extends GetxController {
  late PersistentTabController controller;
  List<Widget> screens = [
    const HomeScreen(),
    const FavoritesScreen(),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    Container(color: Colors.purple),
  ];

  List<PersistentBottomNavBarItem> items = [
    bottomNavBarItem(Icons.home_outlined, ManagerStrings.home),
    bottomNavBarItem(Icons.favorite_border_outlined, ManagerStrings.favorites),
    bottomNavBarItem(Icons.person_outline, ManagerStrings.profile),
    bottomNavBarItem(Icons.shopping_cart_outlined, ManagerStrings.cart),
    bottomNavBarItem(Icons.settings, ManagerStrings.settings),
  ];

  @override
  void onInit() {
    super.onInit();
    controller = PersistentTabController();
  }
}
