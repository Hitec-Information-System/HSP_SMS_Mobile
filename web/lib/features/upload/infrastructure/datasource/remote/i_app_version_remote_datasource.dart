import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/infrastructure/model/app_version_model.dart';

abstract class IAppVersionRemoteDatasource {
  Future<AppVersionModel> getAppVersion();
  Future<bool> saveAppVersion(AppVersion newVersion);
}
