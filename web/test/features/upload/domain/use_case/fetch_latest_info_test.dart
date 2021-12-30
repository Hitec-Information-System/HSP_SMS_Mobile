import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web/core/usecases/usecase.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';
import 'package:web/features/upload/domain/use_case/fetch_latest_info.dart';

import 'fetch_latest_info_test.mocks.dart';

@GenerateMocks([IAppVersionRepository])
void main() {
  late FetchLatestFileInfo usecase;
  late MockIAppVersionRepository mockAppversionRepository;

  setUp(
    () {
      mockAppversionRepository = MockIAppVersionRepository();
      usecase = FetchLatestFileInfo(
        mockAppversionRepository,
      );
    },
  );

  const tAppVersion = AppVersion(
    name: "",
    versionNo: AppVersionSementicNo(
      majorNum: 0,
      minorNum: 1,
      patchNum: 10,
    ),
    lastVersionNo: AppVersionSementicNo(
      majorNum: 0,
      minorNum: 1,
      patchNum: 10,
    ),
    file: null,
  );

  test(
    "should get latest version from repository",
    () async {
      when(mockAppversionRepository.fetchLatestInfo())
          .thenAnswer((_) async => const Right(tAppVersion));

      final result = await usecase(const NoParams());

      expect(result, const Right(tAppVersion));
      verify(mockAppversionRepository.fetchLatestInfo());
      verifyNoMoreInteractions(mockAppversionRepository);
    },
  );
}
