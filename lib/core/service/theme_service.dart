import '/config/all_imports.dart';

class ThemeService {
  ThemeMode getThemeMode() => ThemeMode.light;

  ThemeData getThemeData() => managerLightThemeData();

// static ThemeMode themeMode() {
//   return PrefController().darkTheme ? ThemeMode.dark : ThemeMode.light;
// }
//
// static void changeMode() async {
//   if (PrefController().darkTheme) {
//     Get.changeThemeMode(ThemeMode.light);
//     await PrefController().saveDarkTheme(false);
//   } else {
//     Get.changeThemeMode(ThemeMode.dark);
//     await PrefController().saveDarkTheme(true);
//   }
// }
}
