import '/config/all_imports.dart';

class LogoutController extends GetxController
    with ShowLoadingDialog, ShowSnackBar {
  final LogoutUseCase _useCase = instance<LogoutUseCase>();
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();

  @override
  void onInit() {
    super.onInit();
    performLogout();
  }

  void performLogout() {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      barrierColor: ManagerColors.black87,
      builder: (context) {
        return AlertDialog(
          surfaceTintColor: ManagerColors.whiteColor,
          title: Text(
            ManagerStrings.areYouSureLogout,
            style: titleAlertDialogInEditProfileScreen(),
          ),
          contentPadding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w10,
            end: ManagerWidth.w10,
            top: ManagerHeight.h14,
            bottom: ManagerHeight.h14,
          ),
          actions: [
            SizedBox(height: ManagerHeight.h16),
            Row(
              children: [
                Expanded(
                  child: MainButton(
                    onPressed: () {
                      Get.back();
                      _logout();
                    },
                    text: ManagerStrings.yes,
                    height: ManagerHeight.h38,
                  ),
                ),
                SizedBox(width: ManagerWidth.w16),
                Expanded(
                  child: MainButton(
                    onPressed: () {
                      finishLogout();
                      Get.back();
                    },
                    text: ManagerStrings.no,
                    height: ManagerHeight.h38,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _logout() async {
    showLoadingDialog(Get.context!);
    (await _useCase.execute()).fold(
      (l) async {
        finishMainController();
        Get.back();
        _sharedPreferences.setUser(DataUserModel());
        Get.offAllNamed(Routes.loginScreen);
        await _sharedPreferences.setLoggedIn(false);
      },
      (r) async {
        finishMainController();
        Get.back();
        _sharedPreferences.setUser(DataUserModel());
        Get.offAllNamed(Routes.loginScreen);
        await _sharedPreferences.setLoggedIn(false);
      },
    );
  }
}
