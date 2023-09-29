import 'package:flutter/material.dart';

class ACDAInnerShadowWD extends StatelessWidget {
  const ACDAInnerShadowWD({
    this.shadowPadding,
    this.shadowWidth,
    this.shadowHeight,
    this.shadowBorderRadius,
    Key? key,
  }) : super(key: key);

  final EdgeInsets? shadowPadding;
  final double? shadowWidth;
  final double? shadowHeight;
  final BorderRadius? shadowBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter, // Adjust this value to control the spread of the shadow
      child: Padding(
        padding: shadowPadding ?? const EdgeInsets.symmetric(horizontal: 13),
        child: Container(
          height: shadowHeight ?? 23, // Control the height to control how deep shadow goes
          width: shadowWidth ?? double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.25), // Adjust opacity as needed
                Colors.transparent,
              ],
            ),
            borderRadius: shadowBorderRadius ??
                const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
          ),
        ),
      ),
    );
  }
}
