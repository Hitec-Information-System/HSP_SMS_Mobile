import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/core/error/failure.dart';
import 'package:web_front/core/network/network_info.dart';
import 'package:web_front/version_update/infrastructure/datasources/version_remote_data_source.dart';

import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';
import 'package:web_front/version_update/infrastructure/repositories/version_repository.dart';

import '../../../fixtures/fixture_reader.dart';

import 'version_repository_test.mocks.dart';

@GenerateMocks([VersionRemoteDataSource, NetworkInfo])
void main() {
  late VersionRepository repository;
  late MockVersionRemoteDataSource mockRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockVersionRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = VersionRepository(
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group(
    "fetchVersion",
    () {
      final tVersionDTO = VersionDTO.fromJson(
        jsonDecode(fixture("version.json")),
      );
      final tVersion = tVersionDTO.toDomain();

      test(
        'should check if the device is online',
        () async {
          // arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.getAppVersion())
              .thenAnswer((_) async => tVersionDTO);
          // act
          repository.fetchVersion();
          // assert
          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        "the device is online",
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          });
          test(
            'should return remote data when the call to remote data source is successful',
            () async {
              // arrange
              when(mockRemoteDataSource.getAppVersion())
                  .thenAnswer((_) async => tVersionDTO);
              // act
              final result = await repository.fetchVersion();
              // assert
              verify(mockRemoteDataSource.getAppVersion());
              expect(result, right(tVersion));
            },
          );

          test(
            'should return server failure when the call to remote data source is unsuccessful',
            () async {
              // arrange
              when(mockRemoteDataSource.getAppVersion())
                  .thenThrow(ServerException());
              // act
              final result = await repository.fetchVersion();
              // assert
              verify(mockRemoteDataSource.getAppVersion());
              expect(result, const Left(Failure.api()));
            },
          );

          test(
            'should return timeout failure when the server does not respond',
            () async {
              // arrange
              when(mockRemoteDataSource.getAppVersion())
                  .thenThrow(TimeoutException("not responding"));
              // act
              final result = await repository.fetchVersion();
              // assert
              verify(mockRemoteDataSource.getAppVersion());
              expect(result, const Left(Failure.timeout()));
            },
          );
        },
      );

      group(
        "the device is offline",
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          });
          test(
            'should return no connection failure when the device is offline',
            () async {
              // arrange

              // act
              final result = await repository.fetchVersion();
              // assert
              expect(result, const Left(Failure.noConnection()));
            },
          );
        },
      );
    },
  );

  group(
    "uploadVersion",
    () {
      final tBytes = Uint8List(12);
      test(
        'should check if the device is online',
        () async {
          // arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.uploadAppVersion(any))
              .thenAnswer((_) async {});
          // act
          repository.uploadVersion(tBytes);
          // assert
          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        "the device is online",
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          });
          test(
            'should return unit when the call to remote data source is successful',
            () async {
              // arrange
              when(mockRemoteDataSource.uploadAppVersion(any))
                  .thenAnswer((_) async {});
              // act
              final result = await repository.uploadVersion(tBytes);
              // assert
              verify(mockRemoteDataSource.uploadAppVersion(tBytes));
              expect(result, right(unit));
            },
          );

          test(
            'should return server failure when the call to remote data source is unsuccessful',
            () async {
              // arrange
              when(mockRemoteDataSource.uploadAppVersion(any))
                  .thenThrow(ServerException());
              // act
              final result = await repository.uploadVersion(tBytes);
              // assert
              verify(mockRemoteDataSource.uploadAppVersion(tBytes));
              expect(result, const Left(Failure.api()));
            },
          );

          test(
            'should return timeout failure when the server does not respond',
            () async {
              // arrange
              when(mockRemoteDataSource.uploadAppVersion(any))
                  .thenThrow(TimeoutException("not responding"));
              // act
              final result = await repository.uploadVersion(tBytes);
              // assert
              verify(mockRemoteDataSource.uploadAppVersion(tBytes));
              expect(result, const Left(Failure.timeout()));
            },
          );
        },
      );

      group(
        "the device is offline",
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          });
          test(
            'should return no connection failure when the device is offline',
            () async {
              // arrange

              // act
              final result = await repository.uploadVersion(tBytes);
              // assert
              expect(result, const Left(Failure.noConnection()));
            },
          );
        },
      );
    },
  );
}
