import 'dart:convert';
import 'dart:typed_data';

import 'package:web_front/core/constants/constants.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';

import 'package:http/http.dart' as http;

class VersionRemoteDataSource {
  final http.Client _client;

  const VersionRemoteDataSource(this._client);

  static const _url = "/apk";

  String get _fullUrl => "${Constants.baseApiUrl}$_url";

  Future<VersionDTO> getAppVersion() async {
    final response = await _client.get(
      Uri.parse(_fullUrl),
      headers: {'Content-Type': 'application/json'},
    ).timeout(const Duration(milliseconds: 5000));
    if (response.statusCode == 200) {
      return VersionDTO.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

  Future<void> uploadAppVersion(Uint8List bytes) async {
    final request = http.MultipartRequest("POST", Uri.parse(_fullUrl))
      ..files.add(http.MultipartFile.fromBytes("file", bytes));

    final response =
        await request.send().timeout(const Duration(milliseconds: 5000));

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException();
    }
  }
}
