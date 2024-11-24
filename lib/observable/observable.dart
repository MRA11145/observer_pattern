import '../observer/notification_observer.dart';

abstract class Observable {
  void add(NotificationObserver observer);
  void remove(NotificationObserver observer);
  int getValue();
  void notifySubscribers();
}
