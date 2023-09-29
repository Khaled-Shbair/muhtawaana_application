import '/config/all_imports.dart';

ThemeData managerLightThemeData() {
  return ThemeData.light(useMaterial3: true).copyWith(
    //this for disabled button color
    // disabledColor: ManagerColors.disabledColorLight,
    primaryColor: ManagerColors.primaryColor,
    // primaryColorLight: ManagerColors.primaryColorLight,
    scaffoldBackgroundColor: ManagerColors.whiteColor,

    textTheme: ManagerTextThemeLight(),
    appBarTheme: const AppBarTheme(
      backgroundColor: ManagerColors.whiteColor,
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
