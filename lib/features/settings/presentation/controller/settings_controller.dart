import '/config/all_imports.dart';

class SettingsController extends GetxController {
  bool darkMode = false;
  bool englishLanguage = true;
  bool notifications = false;
  String subTitleDarkMode = ManagerStrings.enableDarkTheme;
  String subTitleEnglishLanguage = ManagerStrings.enableEnglishLanguage;
  String subTitleNotifications = ManagerStrings.enableNotifications;

  void changeDarkMode() {
    darkMode = !darkMode;
    if (darkMode == true) {
      subTitleDarkMode = ManagerStrings.unEnableDarkTheme;
    } else {
      subTitleDarkMode = ManagerStrings.enableDarkTheme;
    }
    update();
  }

  void changeEnglishLanguage() {
    englishLanguage = !englishLanguage;
    if (englishLanguage == true) {
      subTitleEnglishLanguage = ManagerStrings.unEnableEnglishLanguage;
    } else {
      subTitleEnglishLanguage = ManagerStrings.enableEnglishLanguage;
    }
    update();
  }

  void changeNotifications() {
    notifications = !notifications;
    if (notifications == true) {
      subTitleNotifications = ManagerStrings.unEnableNotifications;
    } else {
      subTitleNotifications = ManagerStrings.enableNotifications;
    }
    update();
  }

  void backButton() {
    finishSettings();
  }
}
