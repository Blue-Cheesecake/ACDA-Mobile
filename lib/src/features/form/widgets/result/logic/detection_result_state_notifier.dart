import 'dart:convert';
import 'package:flutter/foundation.dart';

import '../../../../../utils/utils.dart';
import '../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

class DetectionResultStateNotifier extends ACDAStateNotifier<DetectionResultState> {
  DetectionResultStateNotifier({required this.getDetectionResultUseCase}) : super(DetectionResultState.initial());

  final GetDetectionResultUseCase getDetectionResultUseCase;

  Future<void> getDetectionResult(
      {required Uint8List bodyImage, required Uint8List bottomImage, required Uint8List shoesImage}) async {
    final requestBody = DetectionRequestBodyModel(
      bodyImage: base64Encode(bodyImage),
      bottomImage: base64Encode(bottomImage),
      shoesImage: base64Encode(shoesImage),
    );

    final response = await getDetectionResultUseCase.execute(requestBody);
    response.when(
      success: (data) {
        safeState = DetectionResultState.data(data: data);
      },
      error: (_) {
        safeState = DetectionResultState.error();
      },
    );
  }
}
