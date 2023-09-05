import '/config/all_imports.dart';

final instance = GetIt.instance;

Future<void> initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initSharedPreferences();
}

Future<void> _initSharedPreferences() async {
  if (!GetIt.I.isRegistered<AppSettingsSharedPreferences>()) {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    instance.registerLazySingleton<AppSettingsSharedPreferences>(
        () => AppSettingsSharedPreferences(sharedPref));
  }
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

_disposeSplash() {
  Get.delete<SplashController>();
}

initOnBoarding() {
  _disposeSplash();
  Get.put<OnBoardingController>(OnBoardingController());
}

_disposeOnBoarding() {
  Get.delete<OnBoardingController>();
}
