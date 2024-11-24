import '../observer/notification_observer.dart';
import 'stock_observable.dart';

class IphoneObservable implements StockObservable {
  List<NotificationObserver> observersList = [];
  int stockCount = 0;

  @override
  void add(NotificationObserver observer) {
    observersList.add(observer);
  }

  @override
  int getValue() {
    return stockCount;
  }

  @override
  void notifySubscribers() {
    for (NotificationObserver observer in observersList) {
      observer.update();
    }
  }

  @override
  void remove(NotificationObserver observer) {
    observersList.remove(observer);
  }

  @override
  void setStockCount(int newStockCount) {
    stockCount += newStockCount;
    if (stockCount > 0) {
      notifySubscribers();
    }
  }
}