import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

AppVersionSemanticNoModel _convertStringToAppVersionModel(String versionStr) {
  int majorNum = -1;
  int minorNum = -1;
  int patchNum = -1;

  final versionList = versionStr.split(".");
  if (versionList.length == 3) {
    majorNum = int.tryParse(versionList[0]) ?? -1;
    minorNum = int.tryParse(versionList[1]) ?? -1;
    patchNum = int.tryParse(versionList[2]) ?? -1;
  }

  return AppVersionSemanticNoModel(
    majorNum: majorNum,
    minorNum: minorNum,
    patchNum: patchNum,
  );
}

String _convertAppVersionModelToString(AppVersionSemanticNoModel model) {
  return "${model.majorNum}.${model.minorNum}.${model.patchNum}";
}

@freezed
class AppVersionModel with _$AppVersionModel {
  const AppVersionModel._();
  const factory AppVersionModel({
    @JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
        required AppVersionSemanticNoModel versionNo,
    @Default(null) @JsonKey(ignore: true) XFile? file,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);

  factory AppVersionModel.fromDomain(AppVersion _) => AppVersionModel(
        versionNo: AppVersionSemanticNoModel.fromDomain(_.versionNo),
        file: _.file,
      );

  AppVersion toDomain() => AppVersion(
        name: "",
        versionNo: versionNo.toDomain(),
        lastVersionNo: versionNo.toDomain(),
        file: file,
      );
}

@freezed
class AppVersionSemanticNoModel with _$AppVersionSemanticNoModel {
  const AppVersionSemanticNoModel._();
  const factory AppVersionSemanticNoModel({
    required int majorNum,
    required int minorNum,
    required int patchNum,
  }) = _AppVersionSemanticNoModel;

  factory AppVersionSemanticNoModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionSemanticNoModelFromJson(json);

  factory AppVersionSemanticNoModel.fromDomain(AppVersionSementicNo _) =>
      AppVersionSemanticNoModel(
        majorNum: _.majorNum,
        minorNum: _.minorNum,
        patchNum: _.patchNum,
      );

  AppVersionSementicNo toDomain() => AppVersionSementicNo(
        majorNum: majorNum,
        minorNum: minorNum,
        patchNum: patchNum,
      );
}
