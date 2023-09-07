import '/config/all_imports.dart';

extension NonNullString on String? {
  String onNull() {
    if (this == null) {
      return '';
    }
    return this!;
  }

  String onNullLocale() {
    if (this == null) {
      return LocaleConstants.englishLanguage;
    }
    return this!;
  }
}

extension NonNullDouble on double? {
  double onNull() {
    if (this == null) {
      return 0;
    }
    return this!;
  }
}

extension NonNullInt on int? {
  int onNull() {
    if (this == null) {
      return 0;
    }
    return this!;
  }
}

extension NonNullBool on bool? {
  bool onNull() {
    if (this == null) {
      return false;
    }
    return this!;
  }
}
