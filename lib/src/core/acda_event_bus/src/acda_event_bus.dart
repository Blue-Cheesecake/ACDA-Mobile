import 'dart:async';

import 'package:event_bus/event_bus.dart';

import '../../core.dart';
import 'events/events.dart';

class ACDAEventBus {
  ACDAEventBus._();

  static final _instance = ACDAEventBus._();
  static ACDAEventBus get instance => _instance;

  final _eventBus = EventBus();

  void fire(BaseEvent event) {
    ACDALog.printDebug(message: 'Firing Event > ${event.name}');
    _eventBus.fire(event);
  }

  StreamSubscription<T> listen<T extends BaseEvent>(
    void Function(T event) callback, {
    void Function(Object)? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _eventBus.on<T>().listen(
          callback,
          onError: onError,
          onDone: onDone,
          cancelOnError: cancelOnError,
        );
  }
}
