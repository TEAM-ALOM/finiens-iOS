//
//  SearchMapView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI
import ComposableArchitecture
import NMapsMap
import CoreLocation

struct MapView: View {
    var body: some View {
        ZStack {
            UIMapView()
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct UIMapView: UIViewRepresentable {
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
        
        // 줌인아웃 : 기존 네이버가 제공하는 버튼의 액션보다 매끄럽지 못함
        NotificationCenter.default.addObserver(forName: Notification.Name("zoomIn"), object: nil, queue: nil) { _ in
            view.mapView.zoomLevel += 0.6
        }
        NotificationCenter.default.addObserver(forName: Notification.Name("zoomOut"), object: nil, queue: nil) { _ in
            view.mapView.zoomLevel -= 0.6
        }

        return view
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) {}
}

struct SearchMapView: View {
    let store: StoreOf<SearchMapStore>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            ZStack {
                MapView()

                VStack {
                    // 장소 검색 바
                    if viewStore.isDefectedArrowButtonVisible {
                        HStack {
                            Button(action: {
                                viewStore.send(.isTappedLocationSearchBar)
                            }) {
                                Text("장소 검색")
                                    .foregroundColor(Color(.gray))
                            }
                            Spacer()
                            Image(systemName: "magnifyingglass")
                        }
                        .padding()
                        .frame(width: 353, height: 34)
                        .background(Color(.white))
                        .cornerRadius(8)
                        .fullScreenCover(isPresented: viewStore.binding(get: \.isShowingLocationSearchView, send: SearchMapStore.Action.isTappedLocationSearchBar)) {
                            
                            LocationSearchView(store: self.store.scope(state: \.locationSearch, action: SearchMapStore.Action.locationSearch))
                        }
                    }
                    else {
                        DepArrBar()
                    }
                    Spacer()
                    
                    VStack {
                        HStack {
                            ZoomButton(image: "plus") {
                                NotificationCenter.default.post(name: Notification.Name("zoomIn"), object: nil)
                            }

                            Spacer()
                            
                            VStack {
                                if viewStore.isDefectedArrowButtonVisible {
                                    Button(action: {
                                        viewStore.send(.isTappedDefectedArrowButton)
                                    }) {
                                        Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                    }
                                } else {
                                    Button(action: {
                                        viewStore.send(.isTappedDefectedArrowButton)
                                    }) {
                                        Image(systemName: "xmark.circle.fill")
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                    }
                                }
                            }
                            .foregroundColor(Color(.red))
                            .background(Color.white)
                            .clipShape(Circle())
                        }
                        .padding(.vertical, 5.0)

                        HStack {
                            ZoomButton(image: "minus") {
                                NotificationCenter.default.post(name: Notification.Name("zoomOut"), object: nil)
                            }

                            Spacer()
                            
                            Button(action: {
                                print("현재 내 위치로 이동")
                            }, label: {
                                Image(systemName: "scope")
                            })
                            .font(Font.title.weight(.bold))
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(.red))
                            .background(Color.white)
                            .clipShape(Circle())
                        }
                        .padding(.vertical, 5.0)

                    }
                    .padding(.vertical)

                }
                .padding()
            }
        }
    }
}

struct SearchMapView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMapView(store: Store(initialState: SearchMapStore.State()) {
            SearchMapStore()._printChanges()
        })
    }
}
