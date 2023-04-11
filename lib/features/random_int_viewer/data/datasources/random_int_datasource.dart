import 'dart:math';

import 'package:flutter_clean_template/core/network/http/http_client.dart';

abstract class IRandomIntDataSource {
  Future<int> getRandomInt();
}

class RandomIntRemoteDataSource implements IRandomIntDataSource {
  final HttpClient _httpClient;

  RandomIntRemoteDataSource(this._httpClient);

  @override
  Future<int> getRandomInt() async {
    final response = await _httpClient.execute(
      method: 'GET',
      url: 'https://www.random.org/integers/',
      query: {
        'num': 1,
        'min': 1,
        'max': 100,
        'col': 1,
        'base': 10,
        'format': 'plain',
      },
    );
    return int.parse(response);
  }
}

class RandomIntLocalDataSource implements IRandomIntDataSource {
  @override
  Future<int> getRandomInt() async {
    final random = Random();
    return random.nextInt(100);
  }
}
