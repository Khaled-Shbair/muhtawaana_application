import '/config/all_imports.dart';

enum PrefKeys {
  onBoarding,
  language,
  token,
  loggedIn,
  phone,
  name,
  image,
  email,
  id,
  points,
  credit,
}

class AppSettingsSharedPreferences {
  AppSettingsSharedPreferences(this._shared);

  final SharedPreferences _shared;

  void clear() async => await _shared.clear();

  Future<void> setUser(DataUserModel model) async {
    await _shared.setString(PrefKeys.phone.toString(), model.phone.onNull());
    await _shared.setString(PrefKeys.name.toString(), model.name.onNull());
    await _shared.setString(PrefKeys.email.toString(), model.email.onNull());
    await _shared.setString(PrefKeys.image.toString(), model.image.onNull());
    await _shared.setInt(PrefKeys.id.toString(), model.id.onNull());
    await _shared.setString(PrefKeys.token.toString(), model.token.onNull());
    await _shared.setInt(PrefKeys.credit.toString(), model.credit.onNull());
    await _shared.setInt(PrefKeys.points.toString(), model.points.onNull());
  }

  Future<void> setLoggedIn(bool loggedIn) async =>
      await _shared.setBool(PrefKeys.loggedIn.toString(), loggedIn);

  String get getToken => _shared.getString(PrefKeys.token.toString()).onNull();

  String get getPhone => _shared.getString(PrefKeys.phone.toString()).onNull();

  String get getName => _shared.getString(PrefKeys.name.toString()).onNull();

  String get getImage => _shared.getString(PrefKeys.image.toString()).onNull();

  String get getEmail => _shared.getString(PrefKeys.email.toString()).onNull();

  int get getPoints => _shared.getInt(PrefKeys.points.toString()).onNull();

  int get getCredit => _shared.getInt(PrefKeys.credit.toString()).onNull();

  int get getId => _shared.getInt(PrefKeys.id.toString()).onNull();

  bool get getLoggedIn =>
      _shared.getBool(PrefKeys.loggedIn.toString()).onNull();

////////////////////////////////////////////////////////////////////////////////
  Future<void> setOnBoarding() async =>
      await _shared.setBool(PrefKeys.onBoarding.toString(), true);

  bool get getOnBoarding =>
      _shared.getBool(PrefKeys.onBoarding.toString()).onNull();

  Future<void> setLanguage(String language) async =>
      await _shared.setString(PrefKeys.language.toString(), language);

  String get getLanguage =>
      _shared.getString(PrefKeys.language.toString()).onNullLocale();
}
