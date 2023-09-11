import 'package:flutter/material.dart';

import '../utils.dart';

class WaveContainerClipper extends CustomClipper<Path> {
  WaveContainerClipper({required this.clipSide, super.reclip});

  final ClipSide clipSide;

  @override
  Path getClip(Size size) => clipSide.toPath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
