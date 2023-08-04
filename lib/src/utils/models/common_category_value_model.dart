import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'common_category_value_model.freezed.dart';
part 'common_category_value_model.g.dart';

@freezed
class CommonCategoryValueModel with _$CommonCategoryValueModel implements ICommonCategoryValueEntity {
  factory CommonCategoryValueModel({
    required final int id,
    required final String value,
    String? description,
  }) = _CommonCategoryValueModel;

  factory CommonCategoryValueModel.fromJson(Map<String, dynamic> json) => _$CommonCategoryValueModelFromJson(json);
}
