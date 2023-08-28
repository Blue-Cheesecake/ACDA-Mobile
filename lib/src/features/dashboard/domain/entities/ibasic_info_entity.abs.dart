import 'entities.dart';

abstract class IBasicInfoEntity {
  IBasicInfoEntity({required this.name, required this.evaluationResultHistoryNumber});

  /// Capitalized firstName
  final String name;
  final IEvaluationResultHistoryNumberEntity evaluationResultHistoryNumber;
}
