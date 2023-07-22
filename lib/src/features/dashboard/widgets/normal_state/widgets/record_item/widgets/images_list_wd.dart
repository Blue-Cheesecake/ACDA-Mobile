import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImagesListWD extends StatelessWidget {
  const ImagesListWD({
    Key? key,
    required this.bodyImageBytes,
    required this.bottomImageBytes,
    required this.shoesImageBytes,
  }) : super(key: key);

  final Uint8List bodyImageBytes;
  final Uint8List bottomImageBytes;
  final Uint8List shoesImageBytes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ExampleImageWD(imageBytes: bodyImageBytes),
        const SizedBox(width: 15),
        _ExampleImageWD(imageBytes: bottomImageBytes),
        const SizedBox(width: 15),
        _ExampleImageWD(imageBytes: shoesImageBytes),
      ],
    );
  }
}

class _ExampleImageWD extends StatelessWidget {
  const _ExampleImageWD({Key? key, required this.imageBytes}) : super(key: key);

  final Uint8List imageBytes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 49,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        child: Image.memory(
          imageBytes,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
