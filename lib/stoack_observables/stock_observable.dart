import '../observable/observable.dart';
import '../observer/notification_observer.dart';

abstract class StockObservable implements Observable {
  void setStockCount(int newStockCount);
}
