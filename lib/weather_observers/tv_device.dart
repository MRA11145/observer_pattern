import '../observable/observable.dart';
import '../observer/notification_observer.dart';

class TvDevice implements NotificationObserver {
  Observable observable;

  TvDevice(this.observable);

  @override
  void update() {
    print('TV device updated with temperature: ${observable.getValue()}');
  }
}
