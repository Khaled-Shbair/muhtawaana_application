import 'package:muhtawaana_app/config/all_imports.dart';

AppBar categoriesAppBar(String text) {
  return AppBar(
    leading: const MyBackIcon(),
    backgroundColor: ManagerColors.whiteColor,
    elevation: AppConstants.elevationAppBar,
    title: Text(
      text,
      style: titleAppBarInCategoriesScreen(),
    ),
  );
}
