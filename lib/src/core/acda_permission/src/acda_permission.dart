import 'package:permission_handler/permission_handler.dart';

class ACDAPermission {
  ACDAPermission._();

  static final ACDAPermission _instance = ACDAPermission._();
  static ACDAPermission get instance => _instance;

  Future<bool> get isPhotoLibraryAccessGranted => Permission.photos.isGranted;
  Future<bool> get isCameraAccessGranted => Permission.camera.isGranted;
  Future<bool> get isLocationAccessGranted async =>
      await Permission.locationAlways.isGranted && await Permission.locationWhenInUse.isGranted;

  /// return [true] if request permission is granted
  Future<bool> requestPhotoLibraryAccess() async {
    return await Permission.photos.request() == PermissionStatus.granted;
  }

  /// return [true] if request permission is granted
  Future<bool> requestCameraAccess() async {
    return await Permission.camera.request() == PermissionStatus.granted;
  }

  /// return [true] if request permission is granted
  Future<bool> requestLocationAccess() async {
    return await Permission.locationAlways.request() == PermissionStatus.granted &&
        await Permission.locationWhenInUse.request() == PermissionStatus.granted;
  }
}
