abstract class IAuthRemoteDatasource {
  Future<bool> validateUser(Map<String, dynamic> params);
}
