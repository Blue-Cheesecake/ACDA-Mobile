import 'package:flutter/material.dart';

enum ClipSide {
  left,
  horizontal,
  right,
}

extension ToPath on ClipSide {
  Path toPath(Size size) {
    final path = Path();

    switch (this) {
      case ClipSide.left:
        path
          ..moveTo(10, 0)
          ..arcToPoint(
            const Offset(5, 10),
            clockwise: false,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(5, size.height - 10)
          ..arcToPoint(
            Offset(0, size.height),
            clockwise: true,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
          ..close();
        break;
      case ClipSide.horizontal:
        path
          ..moveTo(10, 0)
          ..arcToPoint(
            const Offset(5, 10),
            clockwise: false,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(5, size.height - 10)
          ..arcToPoint(
            Offset(0, size.height),
            clockwise: true,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(size.width, size.height)
          ..arcToPoint(
            Offset(size.width - 5, size.height - 10),
            clockwise: true,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(size.width - 5, 10)
          ..arcToPoint(
            Offset(size.width - 10, 0),
            clockwise: false,
            radius: const Radius.elliptical(5, 8),
          )
          ..close();
        break;

      case ClipSide.right:
        path
          ..moveTo(0, 0)
          ..lineTo(0, size.height)
          ..lineTo(size.width, size.height)
          ..arcToPoint(
            Offset(size.width - 5, size.height - 10),
            clockwise: true,
            radius: const Radius.elliptical(5, 8),
          )
          ..lineTo(size.width - 5, 10)
          ..arcToPoint(
            Offset(size.width - 10, 0),
            clockwise: false,
            radius: const Radius.elliptical(5, 8),
          )
          ..close();
        break;
    }

    return path;
  }
}
