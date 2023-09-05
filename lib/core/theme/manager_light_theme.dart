import '/config/all_imports.dart';

ThemeData managerLightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    //this for disabled button color
    // disabledColor: ManagerColors.disabledColorLight,
    primaryColor: ManagerColors.primaryColor,
    // primaryColorLight: ManagerColors.primaryColorLight,
    // scaffoldBackgroundColor: ManagerColors.white,

    textTheme: ManagerTextThemeLight(),
    appBarTheme: const AppBarTheme(
      // backgroundColor: ManagerColors.appBarBackgroundColorLight,
      centerTitle: true,
      elevation: AppConstants.elevationAppBar,
      // titleTextStyle: mediumTextStyle(
      // color: ManagerColors.black,
      // fontSize: ManagerFontSize.s18,
      // fontFamily: ManagerFontFamily.poppins,
      // ),
    ),
  );
}
