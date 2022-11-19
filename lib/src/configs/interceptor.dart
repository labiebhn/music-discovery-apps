import 'package:dio/dio.dart';
import 'package:music_apps/src/configs/global.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = CONFIGS.baseUrl;
    options.connectTimeout = CONFIGS.timeout;
    options.receiveTimeout = CONFIGS.timeout;
    options.headers = {
      ...options.headers,
      'X-RapidAPI-Key': CONFIGS.apiKey,
      'X-RapidAPI-Host': CONFIGS.apiHost,
    };
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
