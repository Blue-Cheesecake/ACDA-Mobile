extension ListExtension<T> on List<T> {
  void addOrReplace({required T value, T? oldValue}) {
    if (oldValue != null) {
      remove(oldValue);
    }
    add(value);
  }
}
