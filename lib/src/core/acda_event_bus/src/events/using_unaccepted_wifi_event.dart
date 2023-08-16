import '../utils/utils.dart';
import 'events.dart';

class UsingUnacceptedWifiEvent extends BaseEvent {
  UsingUnacceptedWifiEvent({String? message}) : super(name: EventName.usingUnacceptedWifiEvent, message: message);
}
