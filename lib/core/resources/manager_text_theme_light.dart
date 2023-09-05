import '/config/all_imports.dart';

class ManagerTextThemeLight extends TextTheme {
  @override
  TextStyle? get titleSmall => lightTextStyle(
        color: ManagerColors.primaryColor,
        fontFamily: 'ManagerFontFamily.lexend',
        fontSize: ManagerFontSize.s18,
      );
}
