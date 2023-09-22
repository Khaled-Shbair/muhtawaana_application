import '/config/all_imports.dart';

class RequestsApi {
  static const String baseUrl = 'https://student.valuxapps.com/api/';
  static const String login = '${baseUrl}login';
  static const String register = '${baseUrl}register';
  static const String changePassword = '${baseUrl}change-password';
  static const String logout = '${baseUrl}logout';
  static const String home = '${baseUrl}home';
  static const String categories = '${baseUrl}categories';
  static const String category = '${baseUrl}categories/{${ApiConstants.id}}';
  static const String productDetails =
      '${baseUrl}products/{${ApiConstants.id}}';
  static const String favorites = '${baseUrl}favorites';
  static const String updateProfile = '${baseUrl}update-profile';
  static const String fcmToken = '${baseUrl}fcm-token';
}
