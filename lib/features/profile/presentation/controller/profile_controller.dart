import '/config/all_imports.dart';

class ProfileController extends GetxController {
  final AppSettingsSharedPreferences _sharedPref =
      instance<AppSettingsSharedPreferences>();
  final ProfileUseCase _profileUseCase = instance<ProfileUseCase>();

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
      onTap: () => initLogout(),
    ),
  ];

  void getProfileData() async {
    (await _profileUseCase.execute()).fold(
      (l) {},
      (r) async {
        _sharedPref.setUser(
          _dataUserModel(
            points: r.data.points,
            id: r.data.id,
            phone: r.data.phone,
            credit: r.data.credit,
            email: r.data.email,
            name: r.data.name,
            image: r.data.image,
            token: r.data.token,
          ),
        );
      },
    );
  }

  DataUserModel _dataUserModel({
    required String token,
    required String name,
    required String image,
    required String email,
    required String phone,
    required int credit,
    required int id,
    required int points,
  }) {
    return DataUserModel(
      token: token,
      name: name,
      image: image,
      email: email,
      credit: credit,
      phone: phone,
      id: id,
      points: points,
    );
  }
}
