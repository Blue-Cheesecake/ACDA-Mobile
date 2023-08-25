import 'package:flutter/material.dart';

import '../../config/config.dart';

abstract mixin class IACDAOverlayCreator {
  @mustCallSuper
  @protected
  OverlayEntry? overlayEntry;

  /// Optional override function
  /// This will be called on remove
  @protected
  void onRemoveCallbackfn() {}

  @protected
  void displayOverlay({required BuildContext context, required Widget child}) {
    assert(overlayEntry == null);
    overlayEntry = OverlayEntry(
      builder: (context) => Scaffold(
        backgroundColor: DesignSystem.g27.withOpacity(0.8),
        body: GestureDetector(
          onTap: () {
            removeOverlay();
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: child,
              );
            },
          ),
        ),
      ),
    );
    Overlay.of(context).insert(overlayEntry!);
  }

  @protected
  void removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
    onRemoveCallbackfn();
  }
}
