import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ACDATextField extends StatelessWidget {
  const ACDATextField({
    Key? key,
    required this.controller,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.enabled,
    this.errorText,
    this.focusNode,
    this.onTapOutside,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController controller;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onSubmitted;
  final void Function(PointerDownEvent e)? onTapOutside;
  final bool? enabled;
  final String? errorText;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      enabled: enabled,
      maxLines: 1,
      cursorColor: DesignSystem.acdaPrimary,
      cursorHeight: 15,
      onTapOutside: onTapOutside,
      decoration: InputDecoration(
        errorText: errorText,
        focusColor: DesignSystem.acdaPrimary,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        labelText: labelText,
        labelStyle: TextStyles.bodyText4.copyWith(color: DesignSystem.g11),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1, color: DesignSystem.g10),
        ),
      ),
    );
  }
}
