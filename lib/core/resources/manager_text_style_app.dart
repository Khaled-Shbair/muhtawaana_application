import '/config/all_imports.dart';

//Text Style of OnBoarding Screen
TextStyle titleOnBoarding() {
  return semiBoldTextStyle(
    color: ManagerColors.blackColor,
    fontSize: ManagerFontSize.s20,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle subTitleOnBoarding() {
  return regularTextStyle(
    color: ManagerColors.textGeryColor,
    fontSize: ManagerFontSize.s14,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle textStyleOfMainButton([Color? color]) {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s17,
    color: color ?? ManagerColors.whiteColor,
    fontFamily: ManagerFontFamily.inter,
  );
}
