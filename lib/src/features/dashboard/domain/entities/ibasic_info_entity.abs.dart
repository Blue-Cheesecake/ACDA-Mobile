import 'entities.dart';

abstract class IBasicInfoEntity {
  IBasicInfoEntity({required this.name, required this.faculty, required this.evaluationResultHistoryNumber});

  /// Capitalized firstName
  final String name;
  final String faculty;
  final IEvaluationResultHistoryNumberEntity evaluationResultHistoryNumber;
}
