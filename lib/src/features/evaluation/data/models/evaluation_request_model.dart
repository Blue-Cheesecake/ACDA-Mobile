class EvaluationRequestModel {
  EvaluationRequestModel({
    required this.fullBodyImage,
    required this.upperBodyImage,
    required this.studentIdCardImage,
  });

  // base64 string
  final String fullBodyImage;
  final String upperBodyImage;
  final String studentIdCardImage;
}
