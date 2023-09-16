import 'package:muhtawaana_app/config/all_imports.dart';

AppBar myAppBar({
  String? text,
  List<Widget>? actions,
  Function()? onPressed,
}) {
  return AppBar(
    leading: MyBackIcon(onPressed: onPressed),
    backgroundColor: ManagerColors.whiteColor,
    shadowColor: ManagerColors.whiteColor,
    foregroundColor: ManagerColors.whiteColor,
    surfaceTintColor: ManagerColors.whiteColor,
    scrolledUnderElevation: AppConstants.scrolledUnderElevationAppBar,
    elevation: AppConstants.elevationAppBar,
    actions: actions,
    title: Text(
      text ?? '',
      style: titleMyAppBarWidget(),
    ),
  );
}
