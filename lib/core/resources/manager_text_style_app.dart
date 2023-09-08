import '/config/all_imports.dart';

//Text Style of OnBoarding Screen
TextStyle titleOnBoarding() {
  return boldTextStyle(
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

TextStyle textStyleOfMainTextField([Color? color]) {
  return mediumTextStyle(
    fontFamily: ManagerFontFamily.inter,
    color: color ?? ManagerColors.c5,
    fontSize: ManagerFontSize.s15,
  );
}

TextStyle titleLoginScreen() {
  return semiBoldTextStyle(
    fontSize: ManagerFontSize.s17,
    fontFamily: ManagerFontFamily.inter,
    color: ManagerColors.blackColor,
  );
}

TextStyle rememberMeInLoginScreen() {
  return mediumTextStyle(
    fontFamily: ManagerFontFamily.inter,
    fontSize: ManagerFontSize.s13,
    color: ManagerColors.c5,
  );
}

TextStyle styleOfORTextInLoginScreen() {
  return mediumTextStyle(
    color: ManagerColors.c8,
    fontFamily: ManagerFontFamily.inter,
    fontSize: ManagerFontSize.s15,
  );
}

TextStyle loginByFacebookOrGoogleInLoginScreen() {
  return regularTextStyle(
    fontSize: ManagerFontSize.s17,
    fontFamily: ManagerFontFamily.inter,
    color: ManagerColors.c5,
  );
}

TextStyle termsAndConditionsInMyCheckBox([bool condition = false]) {
  return regularTextStyle(
    fontFamily: ManagerFontFamily.inter,
    fontSize: ManagerFontSize.s13,
    color: condition ? ManagerColors.c11 : ManagerColors.c10,
  );
}

TextStyle textStyleOfNamedFiledInChangePasswordScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontSize: ManagerFontSize.s17,
    fontFamily: ManagerFontFamily.inter,
  );
}

TextStyle titleAppBarInAuthScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontSize: ManagerFontSize.s15,
    fontFamily: ManagerFontFamily.inter,
  );
}

TextStyle textStyleInBottomNavBarItem() {
  return mediumTextStyle(
    fontFamily: ManagerFontFamily.roboto,
    color: ManagerColors.whiteColor,
    fontSize: ManagerFontSize.s14,
  );
}

TextStyle hiUserNameInHomeScreen() {
  return mediumTextStyle(
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s17,
    color: ManagerColors.blackColor,
  );
}

TextStyle styleOfSectionsInHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s17,
  );
}

TextStyle buttonMoreSectionsInHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.c14,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s13,
  );
}
