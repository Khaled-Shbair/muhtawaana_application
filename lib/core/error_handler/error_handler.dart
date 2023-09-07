import 'package:dio/dio.dart';
import '/config/all_imports.dart';

/*
   * To avoid any error that may occur in the application
      1- If there is an error coming from DioException (Api), return this error.
         and if there is not statusCode coming from DioException (Api),
         return 400.
      2- else return my error (code: 400, message: 'bad request')
*/
class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode ?? ResponseCode.BAD_REQUEST.value;
      final data = response?.data;
      if (response?.statusCode == ResponseCode.UNAUTHORIZED.value) {
        Future.delayed(
          const Duration(seconds: 1),
          () async {
            AppSettingsSharedPreferences sharedPreferences =
                instance<AppSettingsSharedPreferences>();
            sharedPreferences.clear();
            await Get.offAllNamed(Routes.loginScreen);
          },
        );
      }
      if (data != null) {
        final errorMessage = data[ApiConstants.message] ??
            data[ApiConstants.error]?[ApiConstants.message] ??
            data[ApiConstants.errors].value.first.first ??
            ApiConstants.error;
        failure = Failure(code: statusCode, message: errorMessage);
      } else {
        failure = Failure(code: statusCode, message: ApiConstants.error);
      }
    } else {
      failure = Failure(
        code: ResponseCode.BAD_REQUEST.value,
        message: ApiConstants.badRequest,
      );
    }
  }
}
