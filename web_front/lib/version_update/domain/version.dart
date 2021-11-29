import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'version.freezed.dart';

@freezed
class Version with _$Version {
  const Version._();
  const factory Version({
    required VersionNo versionNo,
    VersionFile? versionFile,
  }) = _Version;

  factory Version.initial() => const Version(
        versionNo: VersionNo(major: -1, minor: -1, patch: -1),
      );
}

@freezed
class VersionNo with _$VersionNo {
  const VersionNo._();
  const factory VersionNo({
    required int major,
    required int minor,
    required int patch,
  }) = _VersionNo;

  String toStr() => "$major.$minor.$patch";
}

@freezed
class VersionFile with _$VersionFile {
  const VersionFile._();
  const factory VersionFile({
    required Uint8List? bytes,
    required String? path,
    required bool isPicked,
  }) = _VersionFile;
}
