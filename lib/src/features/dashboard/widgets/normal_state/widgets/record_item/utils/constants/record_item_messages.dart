class RecordItemMessages {
  const RecordItemMessages._();

  static String tagLabel(String label) => '#$label';
  static String resultText({required bool isPassed}) => isPassed ? 'Passed' : 'Failed';
  static const result = 'Result:';
}
