import 'package:freezed_annotation/freezed_annotation.dart';

import 'utils.dart';

part 'base_result.freezed.dart';

@freezed
abstract class Result<T, E extends AnyException> with _$Result<T, E> {
  const factory Result.success(T data) = Success<T, E>;
  const factory Result.error(E error) = Failure<T, E>;
}
