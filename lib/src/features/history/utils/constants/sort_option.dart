enum SortOption {
  oldest(value: 'ascending'),
  newest(value: 'descending');

  const SortOption({required this.value});
  final String value;
}
