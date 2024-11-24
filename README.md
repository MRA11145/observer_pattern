# Observer Pattern Implementation in Dart

This project demonstrates the **Observer Pattern** using Dart, implementing two real-world scenarios: **stock monitoring** and **weather updates**. The goal is to showcase the decoupled communication between subjects (observables) and their observers.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
  - [Stock Monitoring System](#stock-monitoring-system)
  - [Weather Station System](#weather-station-system)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
  - [Example 1: Stock Monitoring](#example-1-stock-monitoring)
  - [Example 2: Weather Updates](#example-2-weather-updates)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

The **Observer Pattern** is a behavioral design pattern where an object (subject) maintains a list of its dependents (observers) and notifies them of any state changes. This project implements two distinct use cases:

1. **Stock Monitoring System**: Tracks and broadcasts iPhone stock updates.
2. **Weather Station System**: Monitors and shares real-time temperature updates.

---

## Features

### Stock Monitoring System
- Tracks changes in iPhone stock count.
- Sends notifications to observers using:
  - **Email notifications**
  - **Mobile notifications**
- Supports multiple observer types with customizable notification formats.

### Weather Station System
- Monitors temperature changes.
- Sends real-time updates to:
  - **Mobile devices**
  - **TV devices**
- Allows seamless addition and removal of observers.

---

## Project Structure

The project structure is visualized using a class diagram:

```mermaid
classDiagram
class NotificationObserver {
<<interface>>
+update()
}
class StockObservable {
<<interface>>
+add(observer)
+remove(observer)
+notifyObservers()
+setStockCount()
}
class WeatherStation {
<<interface>>
+add(observer)
+remove(observer)
+notifyObservers()
+setTemperature()
}
class IphoneObservable {
-observers: List
-stockCount: int
+add(observer)
+remove(observer)
+notifyObservers()
+setStockCount()
}
class WeatherObservable {
-observers: List
-temperature: double
+add(observer)
+remove(observer)
+notifyObservers()
+setTemperature()
}
class EmailObserver {
-email: String
-observable: StockObservable
+update()
}
class MobileObserver {
-phoneNumber: String
-observable: StockObservable
-userName: String
+update()
}
class MobileDevice {
-observable: WeatherStation
+update()
}
class TvDevice {
-observable: WeatherStation
+update()
}
StockObservable <|.. IphoneObservable
WeatherStation <|.. WeatherObservable
NotificationObserver <|.. EmailObserver
NotificationObserver <|.. MobileObserver
NotificationObserver <|.. MobileDevice
NotificationObserver <|.. TvDevice
IphoneObservable --> EmailObserver : notifies
IphoneObservable --> MobileObserver : notifies
WeatherObservable --> MobileDevice : notifies
WeatherObservable --> TvDevice : notifies
