import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class ACDAImagePicker {
  const ACDAImagePicker._();

  static final ImagePicker _picker = _init();

  static Future<XFile?> pickImageFromGallery() async {
    final response = await _picker.pickImage(source: ImageSource.gallery);
    return response;
  }

  static Future<XFile?> takeAPhoto({CameraController? cameraController}) async {
    if (cameraController == null) {
      final response = await _picker.pickImage(
        source: ImageSource.camera,
      );
      return response;
    }

    final response = await cameraController.takePicture();
    return response;
  }

  static ImagePicker _init() {
    return ImagePicker();
  }
}
