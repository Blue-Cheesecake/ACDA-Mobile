import 'package:acda_mobile/main_run_app.dart';

import 'flavor.dart';

void main(List<String> args) {
  AppFlavor.f = Flavor.dev;
  mainRunApp();
}
