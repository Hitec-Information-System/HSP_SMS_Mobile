import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/core/network/network_info.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/data/repository/app_version_repository.dart';
import 'package:web/features/upload/data/model/app_version_model.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

import 'app_version_repository_test.mocks.dart';

@GenerateMocks([
  IAppVersionRemoteDatasource,
  NetworkInfo,
])
void main() {
  late AppVersionRepository repository;
  late MockIAppVersionRemoteDatasource mockRemoteDatasource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(
    () {
      mockRemoteDatasource = MockIAppVersionRemoteDatasource();
      mockNetworkInfo = MockNetworkInfo();
      repository = AppVersionRepository(
        mockRemoteDatasource,
        mockNetworkInfo,
      );
    },
  );

  group(
    "fetchLatestInfo",
    () {
      const tAppVersionModel = AppVersionModel(
        info: AppVersionInfoModel(
          major: 0,
          minor: 1,
          patch: 10,
        ),
      );

      final tAppVersion = tAppVersionModel.toDomain();

      test(
        "should check if the device is online",
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDatasource.getAppVersion())
              .thenAnswer((_) async => tAppVersionModel);
          // act
          repository.fetchLatestInfo();
          // assert
          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        "device is online",
        () {
          setUp(
            () {
              when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
            },
          );

          test(
            "should return remote data when the call to remote data source is successful",
            () async {
              // arrange
              when(mockRemoteDatasource.getAppVersion())
                  .thenAnswer((_) async => tAppVersionModel);
              // act
              final result = await repository.fetchLatestInfo();
              // assert
              verify(mockRemoteDatasource.getAppVersion());
              expect(result, equals(Right(tAppVersion)));
            },
          );

          test(
            "should return server failure when the call to remote data source is unsuccessful",
            () async {
              // arrange
              when(mockRemoteDatasource.getAppVersion())
                  .thenThrow(ServerException());
              // act
              final result = await repository.fetchLatestInfo();
              // assert
              verify(mockRemoteDatasource.getAppVersion());
              expect(result, equals(const Left(Failure.serverFailure())));
            },
          );
        },
      );

      group(
        "device is offline",
        () {
          setUp(
            () {
              when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
            },
          );

          test(
            "should return ConnectionFailure when there is no internet connection",
            () async {
              final result = await repository.fetchLatestInfo();
              verifyNoMoreInteractions(mockRemoteDatasource);
              expect(result, equals(const Left(Failure.connectionFailure())));
            },
          );
        },
      );
    },
  );

  group(
    "saveAppVersion",
    () {
      final tAppVersion = AppVersion(
        info: const AppVersionInfo(major: 0, minor: 1, patch: 11),
        file: XFile("test.path"),
      );

      test(
        "should check if the device is online",
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDatasource.saveAppVersion(any))
              .thenAnswer((_) async => true);
          // act
          repository.saveAppVersion(tAppVersion);
          // assert
          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        "device is online",
        () {
          setUp(
            () {
              when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
            },
          );

          test(
            "should return remote data when the result from remote data is true",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenAnswer((_) async => true);
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, equals(const Right(unit)));
            },
          );

          test(
            "should throw ServerFailure when the result from remote data is false",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenAnswer((_) async => false);
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, equals(const Left(Failure.serverFailure())));
            },
          );

          test(
            "should throw ServerFailure when the call to remote data is unsuccessful",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenThrow(ServerException());
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, equals(const Left(Failure.serverFailure())));
            },
          );
        },
      );

      group(
        "device is offline",
        () {
          setUp(
            () {
              when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
            },
          );

          test(
            "should throw ConnectionFailure when there is no internet connection",
            () async {
              // arrange
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verifyNoMoreInteractions(mockRemoteDatasource);
              expect(result, equals(const Left(Failure.connectionFailure())));
            },
          );
        },
      );
    },
  );
}
