import 'package:dio/dio.dart';

import '/config/all_imports.dart';

final instance = GetIt.instance;

Future<void> initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initSharedPreferences();
  await _intiInternetChecker();
  await _intiDio();
  // AppSettingsSharedPreferences s = instance<AppSettingsSharedPreferences>();
  // s.clear();
}

Future<void> _initSharedPreferences() async {
  if (!GetIt.I.isRegistered<AppSettingsSharedPreferences>()) {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    instance.registerLazySingleton<AppSettingsSharedPreferences>(
        () => AppSettingsSharedPreferences(sharedPref));
  }
}

Future<void> _intiInternetChecker() async {
  if (!GetIt.I.isRegistered<NetworkInfo>()) {
    InternetConnection internetConnection = InternetConnection();
    instance.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImplementation(internetConnection));
  }
}

Future<void> _intiDio() async {
  if (!GetIt.I.isRegistered<DioFactory>()) {
    instance.registerLazySingleton<DioFactory>(() => DioFactory());
  }
  if (!GetIt.I.isRegistered<AppApi>()) {
    Dio dio = await instance<DioFactory>().getDio();
    instance.registerLazySingleton<AppApi>(() => AppApi(dio));
  }
}

initSplash() => Get.put<SplashController>(SplashController());

_disposeSplash() => Get.delete<SplashController>();

initOnBoarding() {
  _disposeSplash();
  Get.put<OnBoardingController>(OnBoardingController());
}

_disposeOnBoarding() => Get.delete<OnBoardingController>();

initMainController() {
  _disposeSplash();
  _disposeOnBoarding();
  _disposeSignUp();
  _disposeChangePassword();
  _disposeLogin();
  Get.put<MainController>(MainController());
}

_disposeMainController() => Get.delete<MainController>();

initLogin() {
  _disposeSplash();
  _disposeOnBoarding();
  _disposeSignUp();
  _disposeChangePassword();
  if (!GetIt.I.isRegistered<RemoteLoginDataSource>()) {
    instance.registerLazySingleton<RemoteLoginDataSource>(
      () => RemoteLoginDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<LoginRepository>()) {
    instance.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteLoginDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(instance<LoginRepository>()),
    );
  }
  Get.put<LoginController>(LoginController());
}

_disposeLogin() async {
  if (GetIt.I.isRegistered<RemoteLoginDataSource>()) {
    await instance.unregister<RemoteLoginDataSource>();
  }
  if (GetIt.I.isRegistered<LoginRepository>()) {
    await instance.unregister<LoginRepository>();
  }
  if (GetIt.I.isRegistered<LoginUseCase>()) {
    await instance.unregister<LoginUseCase>();
  }
  await Get.delete<LoginController>();
}

initSignUp() {
  _disposeLogin();
  if (!GetIt.I.isRegistered<RemoteSignUpDataSource>()) {
    instance.registerLazySingleton<RemoteSignUpDataSource>(
      () => RemoteSignUpDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<SignUpRepository>()) {
    instance.registerLazySingleton<SignUpRepository>(
      () => SignUpRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteSignUpDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<SignUpUseCase>()) {
    instance.registerFactory<SignUpUseCase>(
      () => SignUpUseCase(instance<SignUpRepository>()),
    );
  }
  Get.put<SignUpController>(SignUpController());
}

_disposeSignUp() async {
  if (GetIt.I.isRegistered<RemoteSignUpDataSource>()) {
    await instance.unregister<RemoteSignUpDataSource>();
  }
  if (GetIt.I.isRegistered<SignUpRepository>()) {
    await instance.unregister<SignUpRepository>();
  }
  if (GetIt.I.isRegistered<SignUpUseCase>()) {
    await instance.unregister<SignUpUseCase>();
  }
  await Get.delete<SignUpController>();
}

initChangePassword() {
  Get.put<ChangePasswordController>(ChangePasswordController());
}

_disposeChangePassword() => Get.delete<ChangePasswordController>();
