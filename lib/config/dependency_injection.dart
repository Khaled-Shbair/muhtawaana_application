import 'package:dio/dio.dart';
import 'all_imports.dart';

final instance = GetIt.instance;

Future<void> initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  _initFirebase();
  await _initSharedPreferences();
  await _intiInternetChecker();
  await _intiDio();
  // only to test
  // instance<AppSettingsSharedPreferences>().clear();
}
////////////////////////////////////////////////////////////////////////////////

Future<void> _initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
////////////////////////////////////////////////////////////////////////////////

Future<void> _initSharedPreferences() async {
  if (!GetIt.I.isRegistered<AppSettingsSharedPreferences>()) {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    instance.registerLazySingleton<AppSettingsSharedPreferences>(
        () => AppSettingsSharedPreferences(sharedPref));
  }
}
////////////////////////////////////////////////////////////////////////////////

Future<void> _intiInternetChecker() async {
  if (!GetIt.I.isRegistered<NetworkInfo>()) {
    InternetConnection internetConnection = InternetConnection();
    instance.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImplementation(internetConnection));
  }
}
////////////////////////////////////////////////////////////////////////////////

Future<void> _intiDio() async {
  if (!GetIt.I.isRegistered<DioFactory>()) {
    instance.registerLazySingleton<DioFactory>(() => DioFactory());
  }
  if (!GetIt.I.isRegistered<AppApi>()) {
    Dio dio = await instance<DioFactory>().getDio();
    instance.registerLazySingleton<AppApi>(() => AppApi(dio));
  }
}

////////////////////////////////////////////////////////////////////////////////
initSplash() => Get.put<SplashController>(SplashController());

_finishSplash() async => await Get.delete<SplashController>();
////////////////////////////////////////////////////////////////////////////////
initOnBoarding() {
  _finishSplash();
  Get.put<OnBoardingController>(OnBoardingController());
}

_finishOnBoarding() async => await Get.delete<OnBoardingController>();

///////////////////////////////////////////////////////////////////////////////
initSignUp() {
  finishLogin();
  finishChangePassword();
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

finishSignUp() async {
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

////////////////////////////////////////////////////////////////////////////////
initChangePassword() {
  Get.put<ChangePasswordController>(ChangePasswordController());
}

finishChangePassword() async {
  await Get.delete<ChangePasswordController>();
}

////////////////////////////////////////////////////////////////////////////////
initLogin() {
  _finishSplash();
  _finishOnBoarding();
  finishSignUp();
  finishChangePassword();
  finishLogout();
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

finishLogin() async {
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

////////////////////////////////////////////////////////////////////////////////
initLogout() {
  if (!GetIt.I.isRegistered<RemoteLogoutDataSource>()) {
    instance.registerLazySingleton<RemoteLogoutDataSource>(
      () => RemoteLogoutDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<LogoutRepository>()) {
    instance.registerLazySingleton<LogoutRepository>(
      () => LogoutRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteLogoutDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<LogoutUseCase>()) {
    instance.registerLazySingleton<LogoutUseCase>(
      () => LogoutUseCase(instance<LogoutRepository>()),
    );
  }
  Get.put<LogoutController>(LogoutController());
}

finishLogout() async {
  if (GetIt.I.isRegistered<RemoteLogoutDataSource>()) {
    await instance.unregister<RemoteLogoutDataSource>();
  }
  if (GetIt.I.isRegistered<LogoutRepository>()) {
    await instance.unregister<LogoutRepository>();
  }
  if (GetIt.I.isRegistered<LogoutUseCase>()) {
    await instance.unregister<LogoutUseCase>();
  }
  await Get.delete<LogoutController>();
}

///////////////////////////////////////////////////////////////////////////////
initMainController() {
  initCategories();
  initHome();
  initProfile();
  initCategoryDetails();
  initFavorites();
  _finishSplash();
  _finishOnBoarding();
  finishSignUp();
  finishChangePassword();
  finishLogin();
  Get.put<MainController>(MainController());
}

finishMainController() async {
  _finishHome();
  _finishCategories();
  _finishFavorites();
  _finishCategoryDetails();
  _finishProfile();
  finishEditProfile();
  await Get.delete<MainController>();
}

////////////////////////////////////////////////////////////////////////////////
initCategories() {
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
  await Get.delete<CategoriesController>();
}

////////////////////////////////////////////////////////////////////////////////
initFavorites() {
  if (!GetIt.I.isRegistered<RemoteFavoritesDataSource>()) {
    instance.registerLazySingleton<RemoteFavoritesDataSource>(
      () => RemoteFavoritesDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<FavoritesRepository>()) {
    instance.registerLazySingleton<FavoritesRepository>(
      () => FavoritesRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteFavoritesDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<FavoritesUseCase>()) {
    instance.registerLazySingleton<FavoritesUseCase>(
      () => FavoritesUseCase(instance<FavoritesRepository>()),
    );
  }

  Get.put<FavoritesController>(FavoritesController());
}

_finishFavorites() async {
  if (GetIt.I.isRegistered<RemoteFavoritesDataSource>()) {
    await instance.unregister<RemoteFavoritesDataSource>();
  }
  if (GetIt.I.isRegistered<FavoritesRepository>()) {
    await instance.unregister<FavoritesRepository>();
  }
  if (GetIt.I.isRegistered<FavoritesUseCase>()) {
    await instance.unregister<FavoritesUseCase>();
  }
  await Get.delete<FavoritesController>();
}

////////////////////////////////////////////////////////////////////////////////
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

////////////////////////////////////////////////////////////////////////////////
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

////////////////////////////////////////////////////////////////////////////////
initEditProfile() {
  if (!GetIt.I.isRegistered<RemoteEditProfileDataSource>()) {
    instance.registerLazySingleton<RemoteEditProfileDataSource>(
      () => RemoteEditProfileDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<EditProfileRepository>()) {
    instance.registerLazySingleton<EditProfileRepository>(
      () => EditProfileRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteEditProfileDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<EditProfileUseCase>()) {
    instance.registerLazySingleton<EditProfileUseCase>(
      () => EditProfileUseCase(instance<EditProfileRepository>()),
    );
  }
  Get.put<EditProfileController>(EditProfileController());
}

finishEditProfile() async {
  if (GetIt.I.isRegistered<RemoteEditProfileDataSource>()) {
    await instance.unregister<RemoteEditProfileDataSource>();
  }
  if (GetIt.I.isRegistered<EditProfileRepository>()) {
    await instance.unregister<EditProfileRepository>();
  }
  if (GetIt.I.isRegistered<EditProfileUseCase>()) {
    await instance.unregister<EditProfileUseCase>();
  }
  await Get.delete<EditProfileController>();
}

initProfile() async {
  Get.put<ProfileController>(ProfileController());
}

_finishProfile() async {
  await Get.delete<ProfileController>();
}
////////////////////////////////////////////////////////////////////////////////

initCart() {
  if (!GetIt.I.isRegistered<RemoteAddOrDeleteProductCartDataSource>()) {
    instance.registerLazySingleton<RemoteAddOrDeleteProductCartDataSource>(
      () => RemoteAddOrDeleteProductCartDataSourceImplementation(
          instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<AddOrDeleteProductCartRepository>()) {
    instance.registerLazySingleton<AddOrDeleteProductCartRepository>(
      () => AddOrDeleteProductCartRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteAddOrDeleteProductCartDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<AddOrDeleteProductCartUseCase>()) {
    instance.registerLazySingleton<AddOrDeleteProductCartUseCase>(
      () => AddOrDeleteProductCartUseCase(
        instance<AddOrDeleteProductCartRepository>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<RemoteGetAllCartProductsDataSource>()) {
    instance.registerLazySingleton<RemoteGetAllCartProductsDataSource>(
      () =>
          RemoteGetAllCartProductsDataSourceImplementation(instance<AppApi>()),
    );
  }
  if (!GetIt.I.isRegistered<GetAllCartProductsRepository>()) {
    instance.registerLazySingleton<GetAllCartProductsRepository>(
      () => GetAllCartProductsRepositoryImplementation(
        instance<NetworkInfo>(),
        instance<RemoteGetAllCartProductsDataSource>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<GetAllCartProductsUseCase>()) {
    instance.registerLazySingleton<GetAllCartProductsUseCase>(
      () => GetAllCartProductsUseCase(
        instance<GetAllCartProductsRepository>(),
      ),
    );
  }
  Get.put<CartController>(CartController());
}

finishCart() async {
  if (GetIt.I.isRegistered<RemoteAddOrDeleteProductCartDataSource>()) {
    await instance.unregister<RemoteAddOrDeleteProductCartDataSource>();
  }
  if (GetIt.I.isRegistered<AddOrDeleteProductCartRepository>()) {
    await instance.unregister<AddOrDeleteProductCartRepository>();
  }
  if (GetIt.I.isRegistered<AddOrDeleteProductCartUseCase>()) {
    await instance.unregister<AddOrDeleteProductCartUseCase>();
  }
  if (GetIt.I.isRegistered<RemoteGetAllCartProductsDataSource>()) {
    await instance.unregister<RemoteGetAllCartProductsDataSource>();
  }
  if (GetIt.I.isRegistered<GetAllCartProductsRepository>()) {
    await instance.unregister<GetAllCartProductsRepository>();
  }
  if (GetIt.I.isRegistered<GetAllCartProductsUseCase>()) {
    await instance.unregister<GetAllCartProductsUseCase>();
  }
  await Get.delete<CartController>();
}

////////////////////////////////////////////////////////////////////////////////
