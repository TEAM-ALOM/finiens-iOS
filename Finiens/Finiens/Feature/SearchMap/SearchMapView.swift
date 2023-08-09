//
//  SearchMapView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI
import ComposableArchitecture
import NMapsMap
import CoreLocation // 현재 위치 가져오기 위한 모듈

// 지도 뷰 띄우는 코드 -> 격자로 표시됨
struct NaverMapUIView: UIViewRepresentable {
    let centerLatLng = NMGLatLng(lat: 37.5666102, lng: 126.9783881)
        
    func updateUIView(_ uiView: NMFMapView, context: Context) {
        uiView.moveCamera(NMFCameraUpdate(scrollTo: centerLatLng))
    }
    
    func makeUIView(context: Context) -> NMFMapView {
        return NMFMapView(frame: UIScreen.main.bounds)
    }
}

struct SearchMapView: View {
    let store: StoreOf<SearchMapStore>

    var body: some View {
        @State var arrival: String = ""
        @State var departure: String = ""

        @State var region = NMFCameraPosition(NMGLatLng(lat: 37.54330366, lng: 127.04455548), zoom: 15, tilt: 0, heading: 0)

        WithViewStore(store) { viewStore in
            ZStack {
                NaverMapUIView()
                    .edgesIgnoringSafeArea(.top)

                VStack {
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
                    Spacer()
                    
                    VStack {
                        HStack {
                            Button(action: {
                                print("지도 화면 확대")
                            }, label: {
                                Image(systemName: "plus")
                            })
                            .font(Font.title.weight(.bold))
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(.red))
                            .background(Color.white)
                            .clipShape(Circle())
                            
                            Spacer()
                            
                            VStack {
                                if viewStore.isDefectedArrowVisible {
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
                            Button(action: {
                                print("지도 화면 축소")
                            }, label: {
                                Image(systemName: "minus")
                            })
                            .font(Font.title.weight(.bold))
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(.red))
                            .background(Color.white)
                            .clipShape(Circle())
                            
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
        SearchMapView(store: .init(initialState: .init(), reducer: SearchMapStore()._printChanges()))
    }
}
