import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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

  final tMultipartFile = MultipartFile.fromBytes([123, 456], filename: "file");
  final formData = FormData.fromMap({"file": tMultipartFile});

  void setUpGetResponseSuccess200(String endpoint) {
    dioAdapter.onGet(
      endpoint,
      (server) => server.reply(200, json.decode(fixture("app_version.json"))),
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

  void setUpGetResponseTimeoutFailure(String endpoint) {
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

  void setUpGetResponseConnectionFailure(String endpoint) {
    dioAdapter.onGet(
      endpoint,
      (server) => server.throws(
        400,
        DioError(
          error: const SocketException("No connection"),
          type: DioErrorType.other,
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
      data: Matchers.any,
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
      data: Matchers.any,
    );
  }

  void setUpPostResponseTimeoutFalure(String endpoint) {
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
      data: Matchers.any,
    );
  }

  void setUpPostResponseConnectionFailure(String endpoint) {
    dioAdapter.onPost(
      endpoint,
      (server) => server.throws(
        400,
        DioError(
          error: const SocketException("No connection"),
          type: DioErrorType.other,
          requestOptions:
              RequestOptions(path: "${dio.options.baseUrl}$endpoint"),
        ),
      ),
      data: Matchers.any,
    );
  }

  setUp(
    () {
      dio = Dio(
        BaseOptions(
          baseUrl: "",
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
        "should throw a ApiException when the response code is 404 or other",
        () async {
          // arrange
          setUpGetResponseFailure404(_endpoint);
          // act
          final call = datasource.getAppVersion;
          // assert
          expect(
            () => call(),
            throwsA(const TypeMatcher<ApiException>()),
          );
        },
      );

      test(
        "should throw a ServerException when a request times out",
        () async {
          // arrange
          setUpGetResponseTimeoutFailure(_endpoint);
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
        "should throw a ConnectionException when there is no internet connection",
        () async {
          // arrange
          setUpGetResponseConnectionFailure(_endpoint);
          // act
          final call = datasource.getAppVersion;
          // arrange
          expect(
            () => call(),
            throwsA(const TypeMatcher<ConnectionException>()),
          );
        },
      );
    },
  );

  group(
    "saveAppVersion",
    () {
      final tAppVersion = AppVersion(
        name: "",
        versionNo:
            const AppVersionSementicNo(majorNum: 0, minorNum: 1, patchNum: 11),
        lastVersionNo:
            const AppVersionSementicNo(majorNum: 0, minorNum: 1, patchNum: 11),
        // 임의 파일
        file: XFile(
          "test/fixtures/app_version.json",
          name: "mock.apk",
          bytes: Uint8List.fromList([123, 456]),
        ),
      );

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
          final call = datasource.saveAppVersion;
          // assert
          expect(
            () => call(tAppVersion),
            throwsA(const TypeMatcher<ApiException>()),
          );
        },
      );

      test(
        "should throw a ServerException when a request times out",
        () async {
          // arrange
          setUpPostResponseTimeoutFalure(_endpoint);
          // act
          final call = datasource.saveAppVersion;
          // assert
          expect(
            () => call(tAppVersion),
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );

      test(
        "should throw a ConnectionException when there is no internet connection",
        () async {
          // arrange
          setUpPostResponseConnectionFailure(_endpoint);
          // act
          final call = datasource.saveAppVersion;
          // assert
          expect(
            () => call(tAppVersion),
            throwsA(const TypeMatcher<ConnectionException>()),
          );
        },
      );
    },
  );
}
