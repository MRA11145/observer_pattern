import 'package:observable/stoack_observables/stock_observable.dart';

import 'notification_observer.dart';

class MobileObserver implements NotificationObserver {
  String phoneNumber;
  StockObservable stockObservable;
  String name;

  MobileObserver(this.phoneNumber, this.stockObservable, this.name);

  @override
  void update() {
    sendSMS(phoneNumber, 'Product is in stock');
  }

  void sendSMS(String phoneNumber, String message) {
    print('$name sent SMS to $phoneNumber with message: $message');
  }
}
