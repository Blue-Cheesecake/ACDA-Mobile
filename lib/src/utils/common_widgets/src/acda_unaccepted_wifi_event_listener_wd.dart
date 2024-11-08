import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../utils.dart';

class ACDAUnacceptedWifiEventListenerWD extends StatelessWidget {
  const ACDAUnacceptedWifiEventListenerWD({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACDAEventSubscriberWD<UsingUnacceptedWifiEvent>(
      child: child,
      callbackfn: (event) {
        showACDAPopupFN(context: context, popup: const ACDAUseUnacceptedWifiPopupWD());
      },
    );
  }
}
