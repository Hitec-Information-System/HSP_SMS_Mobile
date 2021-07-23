import 'package:frontend/tag/core/domain/tag_failure.dart';
import 'package:frontend/tag/core/domain/tag.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/tag/core/infrastructure/tag_converter.dart';

class QRConverter extends TagConverter {
  @override
  Future<Either<TagFailure, Tag>> convertToDomain<T>(T value) async {
    try {
      return right(Tag(
        id: value as String,
      ));
    } on FormatException {
      return left(const TagFailure.tagError());
    }
  }
}
