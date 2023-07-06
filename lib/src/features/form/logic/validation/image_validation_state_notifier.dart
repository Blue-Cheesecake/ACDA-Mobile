import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../utils/utils.dart';
import 'validation.dart';

class ImageValidationStateNotifier extends ACDAStateNotifier<ImageValidationState> {
  ImageValidationStateNotifier({required ImageValidationUseCase imageValidationUseCase})
      : _imageValidationUseCase = imageValidationUseCase,
        super(ImageValidationState.initial());

  final ImageValidationUseCase _imageValidationUseCase;

  Future<void> validate(ValidationCategory category) async {
    final response = await _imageValidationUseCase.execute(ImageValidationRequestBodyModel(
      image: '',
      category: category,
    ));

    response.when(
      success: (result) {
        safeState = ImageValidationState.data(result: result);
      },
      error: (error) {
        safeState = ImageValidationState.error();
      },
    );
  }
}
