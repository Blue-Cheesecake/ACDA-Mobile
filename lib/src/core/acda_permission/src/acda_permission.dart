import 'package:permission_handler/permission_handler.dart';

class ACDAPermission {
  ACDAPermission._();

  static final ACDAPermission _instance = ACDAPermission._();
  static ACDAPermission get instance => _instance;

  Future<bool> get isPhotoLibraryAccessGranted => Permission.photos.isGranted;
  Future<bool> get isCameraAccessGranted => Permission.camera.isGranted;

  Future<void> requestPhotoLibraryAccess() async {
    await Permission.photos.request();
  }

  Future<void> requestCameraAccess() async {
    await Permission.camera.request();
  }
}
