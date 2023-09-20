import '/config/all_imports.dart';

class ProfileController extends GetxController {
  final AppSettingsSharedPreferences _sharedPref =
      instance<AppSettingsSharedPreferences>();

  String get userName => _sharedPref.getName;

  String get userEmail => _sharedPref.getEmail;

  String get userImage => _sharedPref.getImage;

  String get userPhone => _sharedPref.getPhone;
  List<ProfileCard> profileCard = [
    ProfileCard(
      name: ManagerStrings.editProfile,
      icon: Icons.person_outline,
      onTap: () => Get.toNamed(Routes.editProfileScreen),
    ),
    ProfileCard(
      name: ManagerStrings.settings,
      icon: Icons.settings_outlined,
      onTap: () => Get.toNamed(Routes.settingsScreen),
    ),
    ProfileCard(
      name: ManagerStrings.shareApp,
      icon: Icons.share_outlined,
      onTap: () {
        //TODO:Add link of app on store
        Share.share('Link of app on store');
      },
    ),
    ProfileCard(
      name: ManagerStrings.notifications,
      icon: Icons.notifications_outlined,
      onTap: () => Get.toNamed(Routes.notificationsScreen),
    ),
    ProfileCard(
      name: ManagerStrings.logout,
      icon: Icons.logout_outlined,
      onTap: () {},
    ),
  ];
}
