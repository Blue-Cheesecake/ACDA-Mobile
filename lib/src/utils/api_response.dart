import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/models.dart';

part 'api_response.freezed.dart';

@freezed
class APIResponse<T> with _$APIResponse {
  const factory APIResponse.success(T data) = APIAccepted<T>;
  const factory APIResponse.error(APISimpleMessageModel errorMessage) = APIError;
}
