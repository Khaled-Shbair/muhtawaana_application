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

TextStyle styleOfTitleOfDepartmentInHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s17,
  );
}

TextStyle buttonMoreSectionsInTitleOfDepartmentOfHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.c14,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s13,
  );
}

TextStyle nameOfCategoryInHomeCategoryOfHomeScreen() {
  return regularTextStyle(
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s12,
    color: ManagerColors.c5,
  );
}

TextStyle nameOfProductInHomeProductOfHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.c16,
    fontSize: ManagerFontSize.s15,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle priceOfProductInHomeProductOfHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontSize: ManagerFontSize.s14,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle oldPriceOfProductInHomeProductOfHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontSize: ManagerFontSize.s10,
    fontFamily: ManagerFontFamily.roboto,
    decoration: TextDecoration.lineThrough,
  );
}

TextStyle showDetailsButtonInHomeProductOfHomeScreen() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s12,
    color: ManagerColors.whiteColor,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle discountOfProductInHomeProductOfHomeScreen() {
  return mediumTextStyle(
    color: ManagerColors.whiteColor,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s10,
  );
}

// my appBar widget
TextStyle titleMyAppBarWidget() {
  return mediumTextStyle(
    color: ManagerColors.c5,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s17,
  );
}

// product details screen
TextStyle nameOfProductInProductDetails() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s17,
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle titleDescriptionOfProductInProductDetails() {
  return regularTextStyle(
    fontSize: ManagerFontSize.s15,
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle descriptionOfProductInProductDetails() {
  return regularTextStyle(
    fontSize: ManagerFontSize.s12,
    color: ManagerColors.c20,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle titlePriceOfProductInProductDetails() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s17,
    color: ManagerColors.c21,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle priceOfProductInProductDetails() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s18,
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle oldPriceOfProductInProductDetails() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s15,
    color: ManagerColors.c10,
    fontFamily: ManagerFontFamily.roboto,
    decoration: TextDecoration.lineThrough,
    decorationColor: ManagerColors.c10,
    decorationThickness: 1.5,
  );
}

TextStyle addToCartInProductDetails() {
  return mediumTextStyle(
    fontSize: ManagerFontSize.s15,
    color: ManagerColors.whiteColor,
    fontFamily: ManagerFontFamily.roboto,
  );
}

TextStyle styleOfSearchInMySearch([Color? color]) {
  return mediumTextStyle(
    fontFamily: ManagerFontFamily.inter,
    fontSize: ManagerFontSize.s15,
    color: color ?? ManagerColors.c4,
  );
}

// MyCardProduct widget
TextStyle nameOfProductInMyCardProduct() {
  return mediumTextStyle(
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s12,
  );
}

TextStyle priceOfProductInMyCardProduct() {
  return regularTextStyle(
    color: ManagerColors.c5,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s12,
  );
}

TextStyle oldPriceOfProductInMyCardProduct() {
  return regularTextStyle(
    color: ManagerColors.blackColor,
    fontFamily: ManagerFontFamily.roboto,
    fontSize: ManagerFontSize.s10,
    decoration: TextDecoration.lineThrough,
  );
}

TextStyle showDetailsButtonInMyCardProduct() {
  return mediumTextStyle(
    color: ManagerColors.whiteColor,
    fontSize: ManagerFontSize.s10,
    fontFamily: ManagerFontFamily.roboto,
  );
}
