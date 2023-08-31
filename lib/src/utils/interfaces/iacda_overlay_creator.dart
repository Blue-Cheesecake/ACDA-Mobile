import 'package:flutter/material.dart';

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
      builder: (context) => child,
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
