import "package:connectivity_plus/connectivity_plus.dart";

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoConnectivityAdapter implements NetworkInfo {
  final Connectivity _connectivity;

  const NetworkInfoConnectivityAdapter(this._connectivity);

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      return true;
    }
    return false;
  }
}
