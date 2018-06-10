//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

protocol Observer {
    var id: Int {get}
    func update (temperature: Double, humidity: Double, pressure: Double) -> Void
}

protocol Subject {
    func registerObserver(observer: Observer) -> Void
    func notifyObservers() -> Void
    func removeObserver(observer: Observer) -> Void
}

protocol DisplayElement {
    func display() -> Void
}

public class WeatherData: Subject {
    private var observers: [Observer] = []
    private var temperature = 20.0
    private var humidity = 33.0
    private var pressure = 101.3
    
    init () {}
    
    func registerObserver(observer: Observer) {
        observers.append(observer)
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(temperature: temperature, humidity: humidity, pressure: pressure)
        }
    }
    
    func removeObserver(observer: Observer) {
        observers = observers.filter({ (observerToCompare) -> Bool in observerToCompare.id != observer.id })
    }
    
    func setMeasurementsNotifyObservers (temperature: Double, humidity: Double, pressure: Double) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        notifyObservers()
    }
}

public class CurrentConditionDisplay: DisplayElement, Observer {
    internal var id: Int = 0
    private var temperature: Double = 30
    private var humidity: Double = 20.0
    
    init(id: Int) {
        self.id = id
    }
    
    func update(temperature: Double, humidity: Double, pressure: Double) {
        self.temperature = temperature
        self.humidity = humidity
        display()
    }
    
    func display() {
        let message = "Current conditions: " + String(temperature) + "F degrees and " + String(humidity) + " % humidity"
        print(message)
    }
}

var weatherStation = WeatherData()
var currentConditionDisplay = CurrentConditionDisplay(id: 1)
weatherStation.registerObserver(observer: currentConditionDisplay)
weatherStation.notifyObservers()
weatherStation.setMeasurementsNotifyObservers(temperature: 45, humidity: 20, pressure: 10)
weatherStation.notifyObservers()

