import '/config/all_imports.dart';
import 'package:dio/dio.dart';

class DioFactory {
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();

  Future<Dio> getDio() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
      baseUrl: RequestsApi.baseUrl,
      receiveTimeout: const Duration(seconds: ApiConstants.receiveTimeout),
      sendTimeout: const Duration(seconds: ApiConstants.sendTimeout),
      headers: {
        ApiConstants.authorization:
            '${ApiConstants.bearer}${_sharedPreferences.getToken}',
        ApiConstants.lang: _sharedPreferences.getLanguage,
        ApiConstants.contentType: 'application/json',
      },
    );
    InterceptorsWrapper interceptor = InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers[ApiConstants.authorization] =
            '${ApiConstants.bearer}${_sharedPreferences.getToken}';
        return handler.next(options);
      },
    );
    dio.interceptors.add(interceptor);
    if (!kReleaseMode) {
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      );
    }
    return dio;
  }
}
