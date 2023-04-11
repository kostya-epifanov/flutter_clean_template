import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_clean_template/features/common/data/datasources/connectivity_datasource.dart';

abstract class IConnectivityRepository {
  Future<bool> isConnected();
  Stream<ConnectivityResult> $connectivity();
}

class ConnectivityRepository implements IConnectivityRepository {
  final IConnectivityDataSource _connectivityDataSource;

  const ConnectivityRepository(this._connectivityDataSource);

  @override
  Future<bool> isConnected() async {
    return _connectivityDataSource.isConnected();
  }

  @override
  Stream<ConnectivityResult> $connectivity() {
    return _connectivityDataSource.$connectivity();
  }
}