import 'package:observable/observer/email_observer.dart';
import 'package:observable/weather_observables/weather_station.dart';

import 'stoack_observables/iphone_observable.dart';
import 'stoack_observables/stock_observable.dart';
import 'observer/mobile_observer.dart';
import 'observer/notification_observer.dart';
import 'weather_observables/weather_obserable.dart';
import 'weather_observers/mobile_device.dart';
import 'weather_observers/tv_device.dart';

int main() {
  StockObservable iphoneObservable = IphoneObservable();
  NotificationObserver emailObserver = EmailObserver('test@test.com', iphoneObservable);
  NotificationObserver mobileObserver = MobileObserver('1234567890', iphoneObservable, 'John');

  iphoneObservable.add(emailObserver);
  iphoneObservable.add(mobileObserver);
  iphoneObservable.setStockCount(1);


  WeatherStation weatherObservable = WeatherObservable();
  NotificationObserver mobileDevice = MobileDevice(weatherObservable);
  NotificationObserver tvDevice = TvDevice(weatherObservable);

  weatherObservable.add(mobileDevice);
  weatherObservable.add(tvDevice);
  weatherObservable.setTemperature(28);

  return 0;
}
