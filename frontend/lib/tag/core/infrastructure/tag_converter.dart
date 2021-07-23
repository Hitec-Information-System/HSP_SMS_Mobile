import 'package:dartz/dartz.dart';
import 'package:frontend/tag/core/domain/tag.dart';
import 'package:frontend/tag/core/domain/tag_failure.dart';

abstract class TagConverter {
  Future<Either<TagFailure, Tag>> convertToDomain<T>(T value);
}
