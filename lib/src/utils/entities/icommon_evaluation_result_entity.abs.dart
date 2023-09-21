abstract class ICommonEvaluationResultEntity {
  ICommonEvaluationResultEntity({required this.isPassed, this.message});

  final bool isPassed;
  final String? message;
}
