import 'src/core/core.dart';

enum Flavor { prd, stg, dev }

class AppFlavor {
  static Flavor? f;

  static AppConfigFlavor get appConfigFlavor {
    switch (f) {
      case Flavor.dev:
        return AppConfigFlavor.dev;
      case Flavor.stg:
        return AppConfigFlavor.stg;
      case Flavor.prd:
        return AppConfigFlavor.prd;
      default:
        return AppConfigFlavor.prd;
    }
  }
}
