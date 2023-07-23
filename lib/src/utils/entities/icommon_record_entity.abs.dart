import 'entities.dart';

abstract interface class ICommonRecordEntity {
  ICommonRecordEntity({
    required this.label,
    required this.bodyImageBase64,
    required this.bottomImageBase64,
    required this.shoesImageBase64,
    required this.result,
  });

  final String label;
  final String bodyImageBase64;
  final String bottomImageBase64;
  final String shoesImageBase64;
  final ICommonDetectionResultEntity result;
}
