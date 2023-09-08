import '/config/all_imports.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle({
    bool? status,
    String? message,
    var data,
  }) {
    if (status == false && data == null) {
      failure = Failure(
        status: status!,
        message: message ?? ApiConstants.badRequest,
      );
    }
  }
}
