import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/tag/core/domain/tag.dart';
part 'tag_dto.freezed.dart';

@freezed
class TagDTO with _$TagDTO {
  const TagDTO._();
  const factory TagDTO({
    required String id,
  }) = _TagDTO;

  factory TagDTO.fromDomain(Tag _) => TagDTO(id: _.id);

  Tag toDomain() => Tag(id: clipSpace(id));
}

String clipSpace(String str) => str.replaceAll(" ", "");
