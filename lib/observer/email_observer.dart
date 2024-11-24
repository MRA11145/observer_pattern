import 'package:observable/stoack_observables/stock_observable.dart';

import 'notification_observer.dart';

class EmailObserver implements NotificationObserver {
  String email;
  StockObservable stockObservable;

  EmailObserver(this.email, this.stockObservable);

  @override
  void update() {
    sendEmail(email, 'Product is in stock');
  }

  void sendEmail(String email, String message) {
    print('Email sent to $email with message: $message');
  }
}
