import '/config/all_imports.dart';

void main() async {
  await initModule();
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key})
      : _themeService = ThemeService(),
        _sharedPreferences = instance<AppSettingsSharedPreferences>();

  final ThemeService _themeService;
  final AppSettingsSharedPreferences _sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        AppConstants.designSizeWidth,
        AppConstants.designSizeHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashScreen,
          theme: _themeService.getThemeData(),
          themeMode: _themeService.getThemeMode(),
          translations: Translation(),
          locale: Locale(_sharedPreferences.getLanguage),
          fallbackLocale: Locale(_sharedPreferences.getLanguage),
        );
      },
    );
  }
}
