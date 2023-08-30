Future<void> countdownFN({required int initialValue, void Function(int currentCounter)? onCounting}) async {
  int c = initialValue;
  while (c >= 0) {
    await Future.delayed(const Duration(seconds: 1));
    c--;
    if (onCounting != null) onCounting(c);
  }
}
