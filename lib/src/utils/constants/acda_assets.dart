import 'package:flutter/widgets.dart';

class ACDAAssets {
  const ACDAAssets._();

  static Widget get arrowRight => Image.asset(
        'assets/icons/arrow_right_icon.png',
        height: 16,
        width: 16,
      );

  static Widget get greatArrowRight => Image.asset(
        'assets/icons/great_right_arrow_icon.png',
        height: 16,
        width: 16,
      );

  static Widget appIcon({Size? size}) => Image.asset(
        'assets/icons/ACDA-AppIcon-iOS.png',
        width: size?.width ?? 44,
        height: size?.height ?? 44,
      );

  static Widget appIconPure({Size? size}) => Image.asset(
        'assets/icons/ACDA-AppIcon-Pure.png',
        width: size?.width ?? 52,
        height: size?.height ?? 52,
      );

  static Widget appTitle({Size? size}) => Image.asset(
        'assets/imgs/ACDA-AppName.png',
        width: size?.width ?? 80,
        height: size?.height ?? 34,
      );
}
