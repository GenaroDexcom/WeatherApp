//
//  LocationManager.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 11/03/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    @Published var status: Status = .notDetermined
    
    enum Status {
        case authorized
        case deniedRestricted
        case notDetermined
    }
    
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location", error)
        isLoading = false
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch (manager.authorizationStatus) {
        case .authorizedWhenInUse, .authorizedAlways:
            status = .authorized
        case .denied, .restricted:
            //TODO: Create view to denegate premission
            status = .deniedRestricted
        case .notDetermined:
            status = .notDetermined
        @unknown default:
            status = .notDetermined
        }
    }
}
