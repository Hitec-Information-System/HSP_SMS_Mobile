import 'package:dartz/dartz.dart';
import 'package:frontend/domain/settings/theme/app_theme.dart';
import 'package:frontend/domain/settings/theme/theme_failures.dart';

abstract class IThemeRepository {
  Future<Either<ThemeFailure, AppTheme>> getThemeData();
}
