import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/data/model/app_version_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tAppVersionModel = AppVersionModel(
    info: AppVersionInfoModel(major: 0, minor: 1, patch: 10),
    file: null,
  );

  test(
    "should be a subclass of AppVersion",
    () async {
      expect(tAppVersionModel.toDomain(), isA<AppVersion>());
    },
  );

  group(
    "fromJson",
    () {
      test(
        "should return a valid model when the JSON is provided",
        () async {
          final Map<String, dynamic> jsonMap =
              jsonDecode(fixture("app_version.json"));

          final result = AppVersionModel.fromJson(jsonMap);

          expect(result, tAppVersionModel);
        },
      );
    },
  );

  group(
    "toJson",
    () {
      test(
        "should return a JSON containing the proper data",
        () async {
          final result = tAppVersionModel.toJson();

          final expectedMap = {"APK_V": "0.1.10"};

          expect(result, expectedMap);
        },
      );
    },
  );
}
