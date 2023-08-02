import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_simple_message_model.freezed.dart';
part 'api_simple_message_model.g.dart';

@freezed
class APISimpleMessageModel with _$APISimpleMessageModel {
  factory APISimpleMessageModel({required final String message}) = _APISimpleMessageModel;

  factory APISimpleMessageModel.fromJson(Map<String, dynamic> json) => _$APISimpleMessageModelFromJson(json);
}
