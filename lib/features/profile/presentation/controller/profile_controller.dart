import '/config/all_imports.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  final ProfileUseCase _profileUseCase = instance<ProfileUseCase>();
  final AppSettingsSharedPreferences _sharedPref =
      instance<AppSettingsSharedPreferences>();
  List<ProfileCard> profileCard = [
    ProfileCard(
      name: ManagerStrings.profile,
      icon: Icons.person_outline,
      onTap: () {},
    ),
    ProfileCard(
      name: ManagerStrings.settings,
      icon: Icons.settings_outlined,
      onTap: () {},
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
      onTap: () {},
    ),
    ProfileCard(
      name: ManagerStrings.logout,
      icon: Icons.logout_outlined,
      onTap: () {},
    ),
  ];

  String get name => _sharedPref.getName;

  String get email => _sharedPref.getEmail;

  String get image => _sharedPref.getImage;

  String get phone => _sharedPref.getPhone;
}
