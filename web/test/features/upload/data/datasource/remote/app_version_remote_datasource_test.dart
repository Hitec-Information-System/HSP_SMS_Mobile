import 'dart:convert';
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/features/upload/data/datasource/remote/app_version_remote_datasource.dart';
import 'package:web/features/upload/data/model/app_version_model.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late AppVersionRemoteDatasource datasource;

  const String _endpoint = "/apk";

  void setUpGetResponseSuccess200(String endpoint) {
    dioAdapter.onGet(
      endpoint,
      (server) => server.reply(200, fixture("app_version.json")),
    );
  }

  void setUpGetResponseFailure404(String endpoint) {
    dioAdapter.onGet(
      endpoint,
      (server) => server.throws(
        404,
        DioError(
          requestOptions:
              RequestOptions(path: "${dio.options.baseUrl}$endpoint"),
          type: DioErrorType.other,
        ),
      ),
    );
  }

  void setUpGetResponseFailureTimeout(String endpoint) {
    dioAdapter.onGet(
      endpoint,
      (server) => server.throws(
        404,
        DioError(
          type: DioErrorType.connectTimeout,
          requestOptions:
              RequestOptions(path: "${dio.options.baseUrl}$endpoint"),
        ),
      ),
    );
  }

  void setUpPostResponseSuccess200(String endpoint) {
    dioAdapter.onPost(
      endpoint,
      (server) => server.reply(200, {"test": "1234"}),
    );
  }

  void setUpPostResponseFailure404(String endpoint) {
    dioAdapter.onPost(
      endpoint,
      (server) => server.throws(
        404,
        DioError(
          requestOptions:
              RequestOptions(path: "${dio.options.baseUrl}$endpoint"),
          type: DioErrorType.other,
        ),
      ),
    );
  }

  void setUpPostResponseFailureTimeout(String endpoint) {
    dioAdapter.onPost(
      endpoint,
      (server) => server.throws(
        404,
        DioError(
          type: DioErrorType.connectTimeout,
          requestOptions:
              RequestOptions(path: "${dio.options.baseUrl}$endpoint"),
        ),
      ),
    );
  }

  setUp(
    () {
      dio = Dio(
        BaseOptions(
          baseUrl: "",
          responseType: ResponseType.json,
          connectTimeout: 5000,
          receiveTimeout: 5000,
        ),
      );
      dioAdapter = DioAdapter(dio: dio);
      datasource = AppVersionRemoteDatasource(dio);
    },
  );

  group(
    "getAppVersion",
    () {
      final tAppVersionModel =
          AppVersionModel.fromJson(json.decode(fixture("app_version.json")));

      test(
        "should return AppVersionModel when the response code is 200",
        () async {
          // arrange
          setUpGetResponseSuccess200(_endpoint);
          // act
          final result = await datasource.getAppVersion();
          // assert
          expect(result, equals(tAppVersionModel));
        },
      );

      test(
        "should throw a ServerException when the response code is 404 or other",
        () async {
          // arrange
          setUpGetResponseFailure404(_endpoint);
          // act
          final call = datasource.getAppVersion;
          // assert
          expect(
            () => call(),
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );

      test(
        "should throw a ServerException when a request times out",
        () async {
          // arrange
          setUpGetResponseFailureTimeout(_endpoint);
          // act
          final call = datasource.getAppVersion;
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
    "saveAppVersion",
    () {
      // TODO: 패키지 버그로 인한 수정이 필요함
      final tAppVersion = AppVersion(
          info: const AppVersionInfo(major: 0, minor: 1, patch: 11),
          // 임의 파일
          file: XFile("test/fixtures/app_version.json"));

      test(
        'should return null when the response code is 200',
        () async {
          // arrange
          setUpPostResponseSuccess200(_endpoint);

          // act
          final result = await datasource.saveAppVersion(tAppVersion);
          // assert
          expect(result, equals(true));
        },
      );

      test(
        "should throw a ServerException when the response code is 404 or other",
        () async {
          // arrange
          setUpPostResponseFailure404(_endpoint);
          // act
          final call = datasource.getAppVersion;
          // assert
          expect(
            () => call(),
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );

      test(
        "should throw a ServerException when a request times out",
        () async {
          // arrange
          setUpPostResponseFailureTimeout(_endpoint);
          // act
          final call = datasource.getAppVersion;
          // assert
          expect(
            () => call(),
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );
    },
  );
}
