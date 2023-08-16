//
//  LocationManager.swift
//  Mapkit
//
//  Created by 김휘선 on 2023/08/16.
//

import SwiftUI
import CoreLocation
import MapKit

//mark: combine framework to watch TextField Change
import Combine


class LocationManager: NSObject, ObservableObject, MKMapViewDelegate, CLLocationManagerDelegate {
    //mark: properties
    @Published var mapView : MKMapView = .init()
    @Published var manager : CLLocationManager = .init()
    
    //mark: search bar text
    @Published var searchText: String = ""
    var cancellable: AnyCancellable?
    @Published var fetchedPlaces: [CLPlacemark]?
    
    //mark: use location
    @Published var userLocaiton: CLLocation?
    
    //mark : final location
    @Published var pickedLocation : CLLocation?
    @Published var pickedPlaceMark : CLPlacemark?
    
    override init(){
        super.init()
        //mark: setting delegates
        manager.delegate = self
        mapView.delegate = self
        
        
        //mark: requesting location access
        manager.requestWhenInUseAuthorization()
        
        //mark: search TextField watching
        cancellable = $searchText
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .removeDuplicates()
            .sink(receiveValue:  {value in
                if value != ""{
                    self.fetchPlaces(value: value)
                }else{
                    self.fetchedPlaces = nil
                }
            })
    }
    
    func fetchPlaces(value: String){
        //mark: fetching places using mklocalsearch and asyc.await
        Task{
            do{
                let request = MKLocalSearch.Request()
                request.naturalLanguageQuery = value.lowercased()
                
                let response = try await MKLocalSearch(request: request).start()
                //We can also use mainactor to publish changes in main thread
                await MainActor.run(body:{
                    self.fetchedPlaces = response.mapItems.compactMap({item -> CLPlacemark? in
                        return item.placemark
                    })
                })
            }
            catch{
                //handle error
            }
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        //handle error
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else{return}
        //self.userLocation = currentLocation // 뭔가 이상해
    }
    
    //mark: Location authorization
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus{
        case .authorizedAlways: manager.requestLocation()
        case .authorizedWhenInUse: manager.requestLocation()
        case .denied: handleLocaitonError()
        case .notDetermined: manager.requestWhenInUseAuthorization()
        default: ()
        }
    }
    
    func handleLocaitonError(){
        //handle error
    }
    
    //mark: add draggable pin to mapview
    
    func addDraggablePin(coordinate: CLLocationCoordinate2D){
        let annotation = MKPointAnnotation()
        annotation.coordinate=coordinate
        annotation.title = "Your Location"
        
        mapView.addAnnotation(annotation)
    }
    // mark: enabling dragging
    func mapView(_mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        let marker = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "DELIVERYPIN")
        marker.isDraggable = true
        marker.canShowCallout = false
        return marker
    }
    
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationView.DragState,
                 fromOldState oldState: MKAnnotationView.DragState){
        guard let newLocation = view.annotation?.coordinate else{return}
        self.pickedLocation = .init(latitude: newLocation.latitude, longitude: newLocation.longitude)
        updatePlacemark(location: .init(latitude: newLocation.latitude, longitude: newLocation.longitude))
    }
    
    func updatePlacemark(location: CLLocation){
        Task{
            do{
                guard let place = try await reverseLocationCoordinates(location: location) else{return}
                await MainActor.run(body:{
                    self.pickedPlaceMark = place
                })
            }
            catch{
                //handle error
            }
        }
    }
    //mark: displaying new location data
    func reverseLocationCoordinates(location:CLLocation)async throws->CLPlacemark?{
        let place = try await CLGeocoder().reverseGeocodeLocation(location).first
        return place
    }
}
