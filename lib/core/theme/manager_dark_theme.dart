import '/config/all_imports.dart';

ThemeData managerDarkThemeData() {
  return ThemeData.dark().copyWith(
    primaryColor: ManagerColors.primaryColor,
    // primaryColorDark: ManagerColors.primaryColorDark,
    // scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorDark,
    textTheme: ManagerTextThemeDark(),
    appBarTheme: const AppBarTheme(
      // backgroundColor: ManagerColors.appBarBackgroundColorDark,
      elevation: AppConstants.elevationAppBar,
      centerTitle: true,
      //titleTextStyle: boldTextStyle(
      //  // color: ManagerColors.black,
      //  fontSize: ManagerFontSize.s18,
      //  // fontFamily: ManagerFontFamily.poppins,
      //),
    ),
    // this for disabled button color
    // disabledColor: ManagerColors.disabledColorDark,
  );
}
