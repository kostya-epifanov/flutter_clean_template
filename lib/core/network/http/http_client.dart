import 'dart:convert';

import 'package:dio/dio.dart';

import 'http_interceptor.dart';

class HttpClient {
  final Dio _internalClient = Dio();
  final HttpInterceptor _interceptor;

  HttpClient(this._interceptor) {
    _internalClient.interceptors.add(_interceptor);
  }

  Future<String> execute({
    required String method,
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
  }) async {
    final response = await _internalClient.request(
      _prepareUrl(
        url: url,
        query: query,
      ),
      options: Options(method: method),
      data: body,
    );
    return json.decode(response.data.toString());
  }

  static String _prepareUrl({
    required String url,
    Map<String, dynamic>? query,
  }) {
    String result = url;
    if (query != null && query.isNotEmpty) {
      final List<dynamic> queries = [];
      for (final entry in query.entries) {
        final key = entry.key;
        final value = entry.value;
        if (value is Iterable) {
          queries.add('$key=${value.join(',')}');
        } else {
          queries.add('$key=$value');
        }
      }
      result += '?${queries.join('&')}';
    }
    return result;
  }
}
