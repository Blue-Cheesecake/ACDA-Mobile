abstract class ICommonCategoryValueEntity {
  ICommonCategoryValueEntity({required this.id, required this.value, this.description});

  final int id;
  final String value;
  final String? description;
}
