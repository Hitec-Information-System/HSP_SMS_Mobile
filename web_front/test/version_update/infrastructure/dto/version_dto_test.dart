import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:web_front/version_update/domain/version.dart';
import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tVersionDTO = VersionDTO(
    versionNo: VersionNoDTO(major: 0, minor: 1, patch: 10),
  );

  test(
    'should be a class of Version entity',
    () async {
      // arrange
      // act
      // assert
      expect(tVersionDTO.toDomain(), isA<Version>());
    },
  );

  group(
    "fromJson",
    () {
      test(
        'should return a valid DTO when JSON map is called',
        () async {
          // arrange
          final jsonMap = json.decode(fixture("version.json"));
          // act
          final result = VersionDTO.fromJson(jsonMap);
          // assert
          expect(result, tVersionDTO);
        },
      );
    },
  );

  group(
    "toJson",
    () {
      test(
        'should return a JSON map containg the proper data',
        () async {
          // arrange
          final expectedJsonMap = {"APK_V": "0.1.10"};
          // act
          final result = tVersionDTO.toJson();
          // assert
          expect(result, expectedJsonMap);
        },
      );
    },
  );
}
