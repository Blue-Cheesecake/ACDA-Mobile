class EvaluationRequestModel {
  EvaluationRequestModel({
    required this.upperBodyImage,
    required this.lowerBodyImage,
    required this.shoesImage,
  });

  // base64 string
  final String upperBodyImage;
  final String lowerBodyImage;
  final String shoesImage;
}
