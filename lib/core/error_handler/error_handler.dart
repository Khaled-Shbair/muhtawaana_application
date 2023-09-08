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

  ErrorHandler.handle({
    bool? status,
    String? message,
    var data,
  }) {
    if (status == false || data == null) {
      failure = Failure(
        status: status!,
        message: message ?? ApiConstants.badRequest,
      );
    }
  }
}
