import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.freezed.dart';

@freezed
class MenuItem with _$MenuItem {
  const MenuItem._();
  const factory MenuItem({
    required String id,
    required String name,
  }) = _MenuItem;
}
