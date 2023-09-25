import '/config/all_imports.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritesController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(
            text: ManagerStrings.favorites,
            appearLeading: false,
          ),
          body: MyBodyOfFavoritesScreen(controller: controller),
        );
      },
    );
  }
}
