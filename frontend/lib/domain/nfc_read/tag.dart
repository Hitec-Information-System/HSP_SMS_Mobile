import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/nfc_read/value_objects.dart';

part 'tag.freezed.dart';

@freezed
abstract class Tag implements _$Tag {
  const factory Tag({required NfcTagId tagId}) = _Tag;
  const Tag._();
}
