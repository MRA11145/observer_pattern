import '../observable/observable.dart';
import '../observer/notification_observer.dart';

class MobileDevice implements NotificationObserver {
  Observable observable;

  MobileDevice(this.observable);

  @override
  void update() {
    print('Mobile device updated with temperature: ${observable.getValue()}');
  }
}
