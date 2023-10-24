abstract class IFaceValidationResultEntity {
  IFaceValidationResultEntity({
    required this.isPassed,
    required this.croppedFaceImage,
  });

  final bool isPassed;
  final String? croppedFaceImage;
}
