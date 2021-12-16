class ServerException implements Exception {}

class ConnectionException implements Exception {}

class ApiException implements Exception {
  final String message;

  const ApiException(this.message);
}
