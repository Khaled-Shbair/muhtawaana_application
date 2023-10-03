import '/config/all_imports.dart';

AppBar myAppBar({
  String? text,
  List<Widget>? actions,
  Function()? onPressed,
  bool appearLeading = true,
  bool foregroundColor = true,
}) {
  return AppBar(
    leading: appearLeading ? MyBackIcon(onPressed: onPressed) : null,
    backgroundColor: ManagerColors.whiteColor,
    shadowColor: ManagerColors.whiteColor,
    foregroundColor: foregroundColor ? ManagerColors.whiteColor : null,
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
