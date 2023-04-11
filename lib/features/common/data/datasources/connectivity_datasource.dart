import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IConnectivityDataSource {
  Future<bool> isConnected();
  Stream<ConnectivityResult> connectivity$();
}

class ConnectivityDataSource implements IConnectivityDataSource {
  final Connectivity _connectivity;

  const ConnectivityDataSource(this._connectivity);

  @override
  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  @override
  Stream<ConnectivityResult> connectivity$() {
    return _connectivity.onConnectivityChanged;
  }
}