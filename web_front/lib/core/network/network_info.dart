import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;
  const NetworkInfoImpl(
    this._connectivity,
  );

  @override
  Future<bool> get isConnected async {
    return await networkType != ConnectivityResult.none;
  }

  Future<ConnectivityResult> get networkType async =>
      await _connectivity.checkConnectivity();
}
