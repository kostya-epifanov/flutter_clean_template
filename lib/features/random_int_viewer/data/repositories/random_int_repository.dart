import 'package:flutter_clean_template/features/common/data/datasources/connectivity_datasource.dart';
import 'package:flutter_clean_template/features/random_int_viewer/data/datasources/random_int_datasource.dart';

abstract class IRandomIntRepository {
  Future<int> getRandomInt();
}

class RandomIntRepository implements IRandomIntRepository {
  final IConnectivityDataSource _connectivityDataSource;
  final RandomIntLocalDataSource _localDataSource;
  final RandomIntRemoteDataSource _remoteDataSource;

  RandomIntRepository(
    this._connectivityDataSource,
    this._localDataSource,
    this._remoteDataSource,
  );

  @override
  Future<int> getRandomInt() async {
    if (await _connectivityDataSource.isConnected()) {
      return _remoteDataSource.getRandomInt();
    }
    return _localDataSource.getRandomInt();
  }
}