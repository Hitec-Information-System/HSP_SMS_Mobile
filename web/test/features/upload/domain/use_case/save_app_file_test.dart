import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/use_case/save_app_version.dart';

import 'fetch_latest_info_test.mocks.dart';

void main() {
  late SaveAppVersion usecase;
  late MockIAppVersionRepository mockIAppVersionRepository;

  setUp(
    () {
      mockIAppVersionRepository = MockIAppVersionRepository();
      usecase = SaveAppVersion(
        mockIAppVersionRepository,
      );
    },
  );

  final tAppVersion = AppVersion(
    info: const AppVersionInfo(major: 0, minor: 1, patch: 10),
    file: XFile("arbitural path"),
  );

  test(
    "should save app version",
    () async {
      when(mockIAppVersionRepository.saveAppVersion(tAppVersion)).thenAnswer(
        (_) async => const Right(unit),
      );

      final result = await usecase(Params(version: tAppVersion));

      expect(result, const Right(unit));
      verify(mockIAppVersionRepository.saveAppVersion(tAppVersion));
      verifyNoMoreInteractions(mockIAppVersionRepository);
    },
  );
}
