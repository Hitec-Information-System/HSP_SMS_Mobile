import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/data/repository/app_version_repository.dart';
import 'package:web/features/upload/data/model/app_version_model.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

import 'app_version_repository_test.mocks.dart';

@GenerateMocks([
  IAppVersionRemoteDatasource,
])
void main() {
  late AppVersionRepository repository;
  late MockIAppVersionRemoteDatasource mockRemoteDatasource;

  setUp(
    () {
      mockRemoteDatasource = MockIAppVersionRemoteDatasource();
      repository = AppVersionRepository(
        mockRemoteDatasource,
      );
    },
  );

  group(
    "fetchLatestInfo",
    () {
      const tAppVersionModel = AppVersionModel(
        versionNo: AppVersionSemanticNoModel(
          majorNum: 0,
          minorNum: 1,
          patchNum: 10,
        ),
      );

      final tAppVersion = tAppVersionModel.toDomain();
      const tErrorMessage = "mock error message";

      group(
        "remote call is successful",
        () {
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
        },
      );

      group(
        "remote call is unsuccessful",
        () {
          test(
            "should return ServerFailure when remoteDatasource throws ServerException",
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

          test(
            "should return ConnectionFailure when remoteDatasource throws ConnectionException",
            () async {
              // arrange
              when(mockRemoteDatasource.getAppVersion())
                  .thenThrow(ConnectionException());
              // act
              final result = await repository.fetchLatestInfo();
              // assert
              verify(mockRemoteDatasource.getAppVersion());
              expect(result, equals(const Left(Failure.connectionFailure())));
            },
          );

          test(
            "should return ApiFailure when remoteDatasource throws ApiException",
            () async {
              // arrange
              when(mockRemoteDatasource.getAppVersion())
                  .thenThrow(const ApiException(tErrorMessage));
              // act
              final result = await repository.fetchLatestInfo();
              // assert
              verify(mockRemoteDatasource.getAppVersion());
              expect(result,
                  equals(const Left(Failure.apiFailure(tErrorMessage))));
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
        name: "",
        versionNo:
            const AppVersionSementicNo(majorNum: 0, minorNum: 1, patchNum: 11),
        lastVersionNo:
            const AppVersionSementicNo(majorNum: 0, minorNum: 1, patchNum: 11),
        file: XFile("test.path"),
      );

      const tErrorMessage = "mock error message";

      group(
        "remote call is successful",
        () {
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
        },
      );

      group(
        "remote call is unsuccessful",
        () {
          test(
            "should throw ServerFailure when remoteDatasource throws ServerException",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenThrow(ServerException());
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, const Left(Failure.serverFailure()));
            },
          );

          test(
            "should throw ConnectionFailure when remoteDatasource throws ConnectionFailure",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenThrow(ConnectionException());
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, const Left(Failure.connectionFailure()));
            },
          );

          test(
            "should throw ApiFailure when remoteDatasource throws ApiException",
            () async {
              // arrange
              when(mockRemoteDatasource.saveAppVersion(any))
                  .thenThrow(const ApiException(tErrorMessage));
              // act
              final result = await repository.saveAppVersion(tAppVersion);
              // assert
              verify(mockRemoteDatasource.saveAppVersion(tAppVersion));
              expect(result, const Left(Failure.apiFailure(tErrorMessage)));
            },
          );
        },
      );
    },
  );
}
