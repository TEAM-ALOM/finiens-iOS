//
//  LocationManager.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/11.
//

import Foundation
import CoreLocation
import MapKit

class LocationManager: NSObject, ObservableObject{
    
    @Published var location : CLLocation?
    @Published var region : MKCoordinateRegion = MKCoordinateRegion.defaultRegion()
    
    
    private let locationManager = CLLocationManager()
    
    override init(){
        super.init()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
}


extension LocationManager: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading locations: [CLLocation]) {  //6:30
        guard let location = locations.last else { return }
        
        
        DispatchQueue.main.async{ [weak self] in
            self?.location = location
            self?.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        }
    }
}
