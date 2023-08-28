abstract class IEvaluationResultHistoryNumberEntity {
  IEvaluationResultHistoryNumberEntity({required this.numPassed, required this.numFailed, required this.total});

  final int numPassed;
  final int numFailed;
  final int total;
}
