//
//  WeatherAppLocationManager.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/10/21.
//

import Foundation
import CoreLocation
//MARK: Get User Location
class LocationManager: NSObject{
    static let shared = LocationManager()
    
    let manager = CLLocationManager()
    
    var completion: ((CLLocationCoordinate2D)->())?
    
    public func getUserLocation(completion: @escaping ((CLLocationCoordinate2D)->())) {
        self.completion = completion
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
}
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {return}
        completion?(location.coordinate)
        manager.stopUpdatingLocation()
    }
}
