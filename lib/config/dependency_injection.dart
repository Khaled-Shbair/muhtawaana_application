import 'package:dio/dio.dart';

import '/config/all_imports.dart';

final instance = GetIt.instance;

Future<void> initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initSharedPreferences();
  await _intiInternetChecker();
  await _intiDio();
  // only to test
  // instance<AppSettingsSharedPreferences>().clear();
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

initOnBoarding() {
  _finishSplash();
  Get.put<OnBoardingController>(OnBoardingController());
}

initMainController() {
  initHome();
  initCategories();
  _finishSplash();
  _finishOnBoarding();
  _finishSignUp();
  _finishChangePassword();
  _finishLogin();
  Get.put<MainController>(MainController());
}

initLogin() {
  _finishSplash();
  _finishOnBoarding();
  _finishSignUp();
  _finishChangePassword();
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

initCategories() {
  _finishCategoryDetails();
  if (!GetIt.I.isRegistered<RemoteCategoriesDataSource>()) {
    instance.registerLazySingleton<RemoteCategoriesDataSource>(
      () => RemoteCategoriesDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<CategoriesRepository>()) {
    instance.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteCategoriesDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<CategoriesUseCase>()) {
    instance.registerLazySingleton<CategoriesUseCase>(
      () => CategoriesUseCase(instance<CategoriesRepository>()),
    );
  }
  Get.put<CategoriesController>(CategoriesController());
}

initSignUp() {
  _finishLogin();
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

initChangePassword() {
  Get.put<ChangePasswordController>(ChangePasswordController());
}

initHome() {
  if (!GetIt.I.isRegistered<RemoteHomeDataSource>()) {
    instance.registerLazySingleton<RemoteHomeDataSource>(
      () => RemoteHomeDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<HomeRepository>()) {
    instance.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteHomeDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<HomeUseCase>()) {
    instance.registerLazySingleton<HomeUseCase>(
      () => HomeUseCase(instance<HomeRepository>()),
    );
  }
  Get.put<HomeController>(HomeController());
}

initCategoryDetails() {
  if (!GetIt.I.isRegistered<RemoteCategoryDataSource>()) {
    instance.registerLazySingleton<RemoteCategoryDataSource>(
      () => RemoteCategoryDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<CategoryRepository>()) {
    instance.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteCategoryDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<CategoryUseCase>()) {
    instance.registerLazySingleton<CategoryUseCase>(
      () => CategoryUseCase(instance<CategoryRepository>()),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////
/* Finish or dispose Controller and remove from memory */
_finishChangePassword() async => await Get.delete<ChangePasswordController>();

_finishSplash() async {
  await Get.delete<SplashController>();
}

_finishOnBoarding() async {
  await Get.delete<OnBoardingController>();
}

_finishMainController() async {
  _finishHome();
  _finishCategories();
  await Get.delete<MainController>();
}

_finishCategories() async {
  if (GetIt.I.isRegistered<RemoteCategoriesDataSource>()) {
    await instance.unregister<RemoteCategoriesDataSource>();
  }
  if (GetIt.I.isRegistered<CategoriesRepository>()) {
    await instance.unregister<CategoriesRepository>();
  }
  if (GetIt.I.isRegistered<CategoriesUseCase>()) {
    await instance.unregister<CategoriesUseCase>();
  }
  Get.delete<CategoriesController>();
}

_finishCategoryDetails() async {
  if (GetIt.I.isRegistered<RemoteCategoryDataSource>()) {
    await instance.unregister<RemoteCategoryDataSource>();
  }
  if (GetIt.I.isRegistered<CategoryRepository>()) {
    await instance.unregister<CategoryRepository>();
  }
  if (GetIt.I.isRegistered<CategoryUseCase>()) {
    await instance.unregister<CategoryUseCase>();
  }
}

_finishLogin() async {
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

_finishHome() async {
  if (GetIt.I.isRegistered<RemoteHomeDataSource>()) {
    await instance.unregister<RemoteHomeDataSource>();
  }
  if (GetIt.I.isRegistered<HomeRepository>()) {
    await instance.unregister<HomeRepository>();
  }
  if (GetIt.I.isRegistered<HomeUseCase>()) {
    await instance.unregister<HomeUseCase>();
  }
  await Get.delete<HomeController>();
}

_finishSignUp() async {
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
