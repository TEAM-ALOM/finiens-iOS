//
//  UIMapView.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/21.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI
import ComposableArchitecture
import NMapsMap
import CoreLocation

struct MapView: UIViewRepresentable {
    @State private var isScrollGestureEnabled = true
    @State private var isZoomGestureEnabled = true // 더블탭 확대
    @State private var showLocation = false // 내 위치 표시 여부


    let coord = NMGLatLng(lat: 37.55062, lng: 127.07440)
    let locationManager = CLLocationManager()

    class Coordinator: NSObject, NMFMapViewCameraDelegate, CLLocationManagerDelegate {
        var parent: UIMapView
        
        init(_ parent: UIMapView) {
            self.parent = parent
        }
    }
    
    func makeUIView(context: Context) -> NMFNaverMapView {
        let view = NMFNaverMapView()
        view.mapView.positionMode = .direction
        view.mapView.zoomLevel = 17
        view.showZoomControls = false // 제공되는 줌인아웃 버튼
        
        // 위치 설정
        let cameraUpdate = NMFCameraUpdate(scrollTo: coord)
        view.mapView.moveCamera(cameraUpdate)
        print("위도: \(coord.lat), 경도: \(coord.lng)")

        // 사용자 위치 정보 요청 설정
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = context.coordinator
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        return view
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) {}
}
