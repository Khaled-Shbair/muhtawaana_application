import '/config/all_imports.dart';

enum PrefKeys {
  onBoarding,
  language,
  token,
  loggedIn,
}

class AppSettingsSharedPreferences {
  AppSettingsSharedPreferences(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  void clear() async => await _sharedPreferences.clear();

  Future<void> setOnBoarding() async =>
      await _sharedPreferences.setBool(PrefKeys.onBoarding.toString(), true);

  bool get getOnBoarding =>
      _sharedPreferences.getBool(PrefKeys.onBoarding.toString()).onNull();

  Future<void> setLanguage(String language) async => await _sharedPreferences
      .setString(PrefKeys.language.toString(), language);

  String get getLanguage =>
      _sharedPreferences.getString(PrefKeys.language.toString()).onNullLocale();

  Future<void> setToken(String token) async =>
      await _sharedPreferences.setString(PrefKeys.token.toString(), token);

  String get getToken =>
      _sharedPreferences.getString(PrefKeys.token.toString()).onNull();

  Future<void> setLoggedIn() async =>
      await _sharedPreferences.setBool(PrefKeys.loggedIn.toString(), true);

  bool get getLoggedIn =>
      _sharedPreferences.getBool(PrefKeys.loggedIn.toString()).onNull();
}
