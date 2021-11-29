import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';
import 'package:web_front/core/constants/constants.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/version_update/domain/version.dart';
import 'package:web_front/version_update/infrastructure/datasources/version_remote_data_source.dart';

import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;

  late VersionRemoteDataSource remoteDataSource;
  setUp(() {
    dio = Dio(BaseOptions(
      baseUrl: Constants.baseApiUrl,
    ));
    dioAdapter = DioAdapter(dio: dio);
    remoteDataSource = VersionRemoteDataSource(dio);
  });

  const _route = "/apk";

  group(
    "fetchVersion",
    () {
      final tVersionDTO = VersionDTO.fromJson(
        jsonDecode(fixture("version.json")),
      );

      test(
        "should return VersionDTO when the response code is 200 (success)",
        () async {
          // arrange
          dioAdapter.onGet(
              _route, (server) => server.reply(200, fixture("version.json")));

          // act
          final result = await remoteDataSource.getAppVersion();
          // assert
          expect(result, equals(tVersionDTO));
        },
      );
      test(
        'should return ServerException when the response code is 404 or other (failure)',
        () async {
          // arrange
          dioAdapter.onGet(_route, (server) => server.reply(404, ""));
          // act
          final call = remoteDataSource.getAppVersion;
          // assert
          expect(
            () => call(),
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );
    },
  );

  group(
    "uploadAppVersion",
    () {
      const tVersion = Version(
        versionNo: VersionNo(major: 0, minor: 1, patch: 10),
        versionFile: VersionFile(
          bytes: null,
          path: "./test/fixtures/test_version_file.jpg",
          isPicked: false,
        ),
      );
      test(
        'should return void when the response code is 200 (success)',
        () async {
          // arrange
          dioAdapter.onPost(_route, (server) => server.reply(200, ""));
          // act
          final call = remoteDataSource.uploadAppVersion;
          // assert
          expect(() => call(tVersion), returnsNormally);
        },
      );
      test(
        'should return ServerException when the response code is 404 or other (failure)',
        () async {
          // arrange
          dioAdapter.onPost(
              _route,
              (server) => server.reply(404, "", headers: {
                    "Content-Type": ["multipart/form-data"]
                  }));
          // act
          final call = remoteDataSource.uploadAppVersion;
          // assert
          expect(() => call(tVersion),
              throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );
}
