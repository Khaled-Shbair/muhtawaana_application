import '/config/all_imports.dart';

TextStyle _textStyle({
  required Color color,
  required FontWeight fontWeight,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
  Color? decorationColor,
  double? decorationThickness,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontSize: fontSize,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    decorationThickness: decorationThickness,
    letterSpacing: letterSpacing,
    height: height,
  );
}

TextStyle lightTextStyle({
  required Color color,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
}) {
  return _textStyle(
    fontWeight: ManagerFontWeight.w300,
    color: color,
    fontFamily: fontFamily,
    fontSize: fontSize,
    decoration: decoration,
  );
}

TextStyle regularTextStyle({
  required Color color,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
}) {
  return _textStyle(
    fontWeight: ManagerFontWeight.w400,
    color: color,
    fontFamily: fontFamily,
    fontSize: fontSize,
    decoration: decoration,
    letterSpacing: letterSpacing,
    height: height,
  );
}

TextStyle mediumTextStyle({
  required Color color,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
  double? letterSpacing,
  Color? decorationColor,
  double? decorationThickness,
  double? height,
}) {
  return _textStyle(
    fontWeight: ManagerFontWeight.w500,
    color: color,
    fontFamily: fontFamily,
    fontSize: fontSize,
    decoration: decoration,
    letterSpacing: letterSpacing,
    decorationColor: decorationColor,
    decorationThickness: decorationThickness,
    height: height,
  );
}

TextStyle boldTextStyle({
  required Color color,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
  Color? decorationColor,
  double? decorationThickness,
}) {
  return _textStyle(
    fontWeight: ManagerFontWeight.w700,
    color: color,
    fontFamily: fontFamily,
    fontSize: fontSize,
    decoration: decoration,
    decorationColor: decorationColor,
    decorationThickness: decorationThickness,
  );
}

TextStyle semiBoldTextStyle({
  required Color color,
  required String fontFamily,
  required double fontSize,
  TextDecoration? decoration,
}) {
  return _textStyle(
    fontWeight: ManagerFontWeight.w600,
    color: color,
    fontFamily: fontFamily,
    fontSize: fontSize,
    decoration: decoration,
  );
}
