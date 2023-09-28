import '/config/all_imports.dart';

class SplashController extends GetxController with FbNotifications {
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: AppConstants.durationSplashScreen),
      () async {
        String route = _sharedPreferences.getLoggedIn
            ? Routes.mainScreen
            : _sharedPreferences.getOnBoarding
                ? Routes.authScreen
                : Routes.onBoardingScreen;
        await Get.offAllNamed(route);
        await requestNotificationPermissions();
        initializeForegroundNotificationForAndroid();
        manageNotificationAction();
      },
    );
  }
}
