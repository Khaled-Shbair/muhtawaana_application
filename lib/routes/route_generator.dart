import '/config/all_imports.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        initOnBoarding();
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.loginScreen:
        initLogin();
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpScreen:
        initSignUp();
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.changePasswordScreen:
        initChangePassword();
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case Routes.mainScreen:
        initMainController();
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.categoriesScreen:
        initCategories();
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      case Routes.forgetPasswordScreen:
        initForgetPassword();
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.categoryDetailsScreen:
        var id = settings.arguments as int;
        initCategoryDetails();
        return MaterialPageRoute(builder: (_) => ProductsOfCategoryScreen(id));
      case Routes.productDetailsScreen:
        var data = settings.arguments as dynamic;
        return MaterialPageRoute(builder: (_) => ProductDetailsScreen(data));
      case Routes.searchProductScreen:
        return MaterialPageRoute(builder: (_) => const SearchProductScreen());
      case Routes.editProfileScreen:
        initEditProfile();
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case Routes.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(ManagerStrings.noRouteFound),
        ),
        body: Center(
          child: Text(ManagerStrings.noRouteFound),
        ),
      ),
    );
  }
}
