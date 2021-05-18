import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_failures.freezed.dart';

@freezed
class ThemeFailure with _$ThemeFailure {
  const factory ThemeFailure.saveError() = SaveError;
  const factory ThemeFailure.notExist() = NotExist;
}
