import 'package:observable/observer/notification_observer.dart';

import '../observable/observable.dart';
import 'weather_station.dart';

class WeatherObservable implements WeatherStation {
  List<NotificationObserver> observersList = [];
  double temperature = 0;

  @override
  void setTemperature(double temperature) {
    this.temperature = temperature;
    notifySubscribers();
  }

  @override
  void add(NotificationObserver observer) {
    observersList.add(observer);
  }

  @override
  int getValue() {
    return temperature.toInt();
  }

  @override
  void notifySubscribers() {
    for (var observer in observersList) {
      observer.update();
    }
  }

  @override
  void remove(NotificationObserver observer) {
    observersList.remove(observer);
  }
}
