import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ACDAEventSubscriberWD<T extends BaseEvent> extends StatefulWidget {
  const ACDAEventSubscriberWD({required this.child, required this.callbackfn, super.key});

  final Widget child;
  final void Function(T event) callbackfn;

  @override
  State<ACDAEventSubscriberWD> createState() => _ACDAEventSubscriberWDState<T>();
}

class _ACDAEventSubscriberWDState<T extends BaseEvent> extends State<ACDAEventSubscriberWD<T>> {
  late StreamSubscription<T> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = ACDAEventBus.instance.listen(widget.callbackfn);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
