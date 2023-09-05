import '../../../../utils/utils.dart';

abstract interface class IEvaluationRecordEntity {
  IEvaluationRecordEntity({
    required this.fullBodyImage,
    required this.upperBodyImage,
    required this.studentIdCardImage,
    required this.addedAt,
    required this.result,
  });

  final String fullBodyImage;
  final String upperBodyImage;
  final String studentIdCardImage;
  final DateTime addedAt;
  final ICommonEvaluationResultEntity result;
}
