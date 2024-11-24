import '../observable/observable.dart';

abstract class WeatherStation implements Observable {
  void setTemperature(double temperature);
}
