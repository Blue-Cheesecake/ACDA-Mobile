enum TimerOption {
  none('Off', 1),
  threeSec('3s', 2),
  tenSec('10s', 3);

  const TimerOption(this.description, this.value);
  final String description;
  final int value;

  static TimerOption fromValue(int value) {
    switch (value) {
      case 1:
        return TimerOption.none;
      case 2:
        return TimerOption.threeSec;
      case 3:
        return TimerOption.tenSec;
    }
    return TimerOption.none;
  }
}
