import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

AppVersionInfoModel _convertStringToAppVersionModel(String versionStr) {
  int major = -1;
  int minor = -1;
  int patch = -1;

  final versionList = versionStr.split(".");
  if (versionList.length == 3) {
    major = int.tryParse(versionList[0]) ?? -1;
    minor = int.tryParse(versionList[1]) ?? -1;
    patch = int.tryParse(versionList[2]) ?? -1;
  }

  return AppVersionInfoModel(
    major: major,
    minor: minor,
    patch: patch,
  );
}

String _convertAppVersionModelToString(AppVersionInfoModel model) {
  return "${model.major}.${model.minor}.${model.patch}";
}

@freezed
class AppVersionModel with _$AppVersionModel {
  const AppVersionModel._();
  const factory AppVersionModel({
    @JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
        required AppVersionInfoModel info,
    @Default(null) @JsonKey(ignore: true) XFile? file,
  }) = _AppVersion;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);

  factory AppVersionModel.fromDomain(AppVersion _) => AppVersionModel(
        info: AppVersionInfoModel.fromDomain(_.info),
        file: _.file,
      );

  AppVersion toDomain() => AppVersion(
        info: info.toDomain(),
        lastInfo: info.toDomain(),
        file: file,
      );
}

@freezed
class AppVersionInfoModel with _$AppVersionInfoModel {
  const AppVersionInfoModel._();
  const factory AppVersionInfoModel({
    required int major,
    required int minor,
    required int patch,
  }) = _AppVersionInfoModel;

  factory AppVersionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionInfoModelFromJson(json);

  factory AppVersionInfoModel.fromDomain(AppVersionInfo _) =>
      AppVersionInfoModel(
        major: _.major,
        minor: _.minor,
        patch: _.patch,
      );

  AppVersionInfo toDomain() => AppVersionInfo(
        major: major,
        minor: minor,
        patch: patch,
      );
}
