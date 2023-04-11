import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class HttpInterceptor extends Interceptor {

  final Logger _logger;

  HttpInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.d('Client.headers: ${options.headers}');
    _logger.d('Client: >>> [${options.method}] ${options.path}: ${options.data}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d('Client: <<< [${response.statusCode}] '
        '${response.requestOptions.method} ${response.requestOptions.path}: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.d('Client: <<< ERROR [${err.response?.statusCode}] '
        '${err.requestOptions.method} ${err.requestOptions.path} ${err.response}');
    return super.onError(err, handler);
  }
}
