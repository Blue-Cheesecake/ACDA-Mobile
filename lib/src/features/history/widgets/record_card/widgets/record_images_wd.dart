import 'dart:convert';

import 'package:flutter/material.dart';

class RecordImagesWD extends StatelessWidget {
  const RecordImagesWD({
    required this.fullBodyImageBase64,
    required this.upperBodyImageBase64,
    required this.studentIdCardImageBase64,
    Key? key,
  }) : super(key: key);

  final String fullBodyImageBase64;
  final String upperBodyImageBase64;
  final String studentIdCardImageBase64;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ImageBoxWD(fullBodyImageBase64),
        const SizedBox(width: 8),
        _ImageBoxWD(upperBodyImageBase64),
        const SizedBox(width: 8),
        _ImageBoxWD(studentIdCardImageBase64),
      ],
    );
  }
}

class _ImageBoxWD extends StatelessWidget {
  const _ImageBoxWD(this.base64Image);

  final String base64Image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Image.memory(
        fit: BoxFit.cover,
        base64Decode(base64Image),
        width: 49,
        height: 49,
      ),
    );
  }
}
