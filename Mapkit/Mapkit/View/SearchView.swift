//
//  SearchView.swift
//  Mapkit
//
//  Created by 김휘선 on 2023/08/16.
//

import SwiftUI
import MapKit

struct SearchView: View {
    @StateObject var locationManager: LocationManager = .init()
    //mark: navigation tag to push view to mapview
    @State var navigationTag: String?
    var body: some View {
        VStack{
            HStack{
                Text("장소 검색")
                    .font(
                        Font.custom("Apple SD Gothic Neo", size: 34)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                    .padding(.top, 51)
                Spacer()
            }
            HStack{
                TextField("검색어 입력", text:$locationManager.searchText)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background{
                RoundedRectangle(cornerRadius: 10, style:.continuous)
                    .strokeBorder(.gray)
            }
            Spacer()
            
            if let places = locationManager.fetchedPlaces,!places.isEmpty{
                List{
                    ForEach(places,id: \.self){place in
                        Button{
                            if let coordinate = place.location?.coordinate{
                                locationManager.pickedLocation = .init(latitude: coordinate.latitude, longitude: coordinate.longitude)
                                locationManager.mapView.region = .init(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                                locationManager.addDraggablePin(coordinate: coordinate)
                                locationManager.updatePlacemark(location: .init(latitude: coordinate.latitude, longitude: coordinate.longitude))
                            }
                            
                            //mark: navigaiting to mapview
                            navigationTag = "MAPVIEW"
                        }label: {
                            HStack(spacing: 15){
                                Image(systemName: "mappin.circle.fill")
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                VStack(alignment: .leading, spacing: 6){
                                    Text(place.name ?? "")
                                        .font(
                                        Font.custom("Apple SD Gothic Neo", size: 15)
                                        .weight(.semibold)
                                        )
                                        .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                    
                                    Text(place.locality ?? "")
                                        .font(
                                        Font.custom("Apple SD Gothic Neo", size: 12)
                                        .weight(.semibold)
                                        )
                                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                }
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            
//            else{
//                //mark: live location button
//                Button{
//                    //mark : setting map region
//                    if let coordinate = locationManager.userLocaiton?.coordinate{
//                        locationManager.mapView.region = .init(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
//                        locationManager.addDraggablePin(coordinate: coordinate)
//                        locationManager.updatePlacemark(location: .init(latitude: coordinate.latitude, longitude: coordinate.longitude))
//
//                        //mark: navigaiting to mapview
//                        navigationTag = "MAPVIEW"
//                    }
//                }label:{
//                    Label{
//                        Text("Use Current Location")
//                            .font(.callout)
//                    } icon: {
//                        Image(systemName: "location.north.circle.fill")
//                    }
//                    .foregroundColor(.green)
//                }
//            }
        }
        .padding()
        .frame(maxHeight:.infinity,alignment: .top)
        .background{
            NavigationLink(tag: "MAPVIEW", selection: $navigationTag){
                MapViewSelection()
                    .environmentObject(locationManager)
                    .navigationBarHidden(true)
            }label:{}
                .labelsHidden()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//mark : mapview live selection

struct MapViewSelection: View{
    @EnvironmentObject var locationManager: LocationManager
    @Environment(\.dismiss) var dismiss
    var body: some View{
        ZStack{
             MapViewHelper()
                .environmentObject(locationManager)
                .ignoresSafeArea()
            
            Button{
                dismiss()
            }label:{
                Image(systemName: "chevron.left")
                    .font(.title2.bold())
                    .foregroundColor(.primary)
            }
            .padding()
            .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .topLeading)
            
            
            //mark: displaying data
            if let place = locationManager.pickedPlaceMark{
                VStack(spacing: 15){
                    Text("Confirm Location")
                        .font(.title2.bold())
                    
                    HStack(spacing: 15){
                        Image(systemName: "mappin.circle.fill")
                            .font(.title2)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading, spacing: 6){
                            Text(place.name ?? "")
                                .font(.title3.bold())
                            
                            Text(place.locality ?? "")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 10)
                    
                    Button{
                        
                    } label:{
                        Text("Confirm Location")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background{
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.green)
                            }
                            .overlay(alignment: .trailing){
                                Image(systemName: "arrow.right")
                                    .font(.title3.bold())
                                    .padding(.trailing)
                            }
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.white)
                        .ignoresSafeArea()
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
        .onDisappear{
            locationManager.pickedLocation = nil
            locationManager.pickedPlaceMark = nil
            
            locationManager.mapView.removeAnnotations(locationManager.mapView.annotations)
        }
    }
}

//mark : uikit mapview

struct MapViewHelper: UIViewRepresentable{
    @EnvironmentObject var locationManager: LocationManager
    func makeUIView(context: Context) -> MKMapView {
        return locationManager.mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {}
}



