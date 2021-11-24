import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/version_update/infrastructure/datasources/version_remote_data_source.dart';

import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';

import '../../../fixtures/fixture_reader.dart';
import 'version_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late MockClient mockClient;

  late VersionRemoteDataSource remoteDataSource;
  setUp(() {
    mockClient = MockClient();
    remoteDataSource = VersionRemoteDataSource(mockClient);
  });

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
          when(mockClient.get(any, headers: anyNamed('headers'))).thenAnswer(
              (_) async => http.Response(fixture("version.json"), 200));

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
          when(
            mockClient.get(any, headers: anyNamed('headers')),
          ).thenAnswer((_) async => http.Response("somthing went wrong", 404));
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
      final bytes = Uint8List(12);
      test(
        'should return void when the response code is 200 (success)',
        () async {
          // arrange
          when(
            mockClient.post(any, headers: anyNamed('headers')),
          ).thenAnswer((_) async {
            return http.Response("", 200);
          });
          // act
          final call = remoteDataSource.uploadAppVersion;
          // assert
          expect(() => call(bytes), returnsNormally);
        },
      );
      test(
        'should return DioError when the response code is 404 or other (failure)',
        () async {
          // arrange
          when(
            mockClient.post(any, headers: anyNamed('headers')),
          ).thenAnswer((_) async {
            return http.Response("", 404);
          });
          // act
          final call = remoteDataSource.uploadAppVersion;
          // assert
          expect(
              () => call(bytes), throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );
}
