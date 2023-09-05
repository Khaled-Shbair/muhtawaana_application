import '/config/all_imports.dart';

class ManagerTextThemeDark extends TextTheme {
  @override
  TextStyle? get displayMedium => mediumTextStyle(
        color: ManagerColors.primaryColor,
        fontFamily: 'ManagerFontFamily.poppins',
        fontSize: ManagerFontSize.s18,
      );
}
