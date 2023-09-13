import 'package:muhtawaana_app/config/all_imports.dart';

AppBar myAppBar(String text) {
  return AppBar(
    leading: const MyBackIcon(),
    backgroundColor: ManagerColors.whiteColor,
    shadowColor: ManagerColors.whiteColor,
    foregroundColor: ManagerColors.whiteColor,
    surfaceTintColor: ManagerColors.whiteColor,
    scrolledUnderElevation: AppConstants.scrolledUnderElevationAppBar,
    elevation: AppConstants.elevationAppBar,
    title: Text(
      text,
      style: titleMyAppBarWidget(),
    ),
  );
}
