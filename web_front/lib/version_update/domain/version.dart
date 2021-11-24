import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'version.freezed.dart';

@freezed
class Version with _$Version {
  const Version._();
  const factory Version({
    required VersionNo versionNo,
    FilePickerResult? versionFile,
  }) = _Version;

  factory Version.initial() => const Version(
        versionNo: VersionNo(major: null, minor: null, patch: null),
      );
}

@freezed
class VersionNo with _$VersionNo {
  const VersionNo._();
  const factory VersionNo({
    required int? major,
    required int? minor,
    required int? patch,
  }) = _VersionNo;
}
