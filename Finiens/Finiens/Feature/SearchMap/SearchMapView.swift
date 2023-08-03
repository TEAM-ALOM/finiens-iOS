//
//  SearchMapView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI
import ComposableArchitecture
import NMapsMap

struct SearchMapView: View {
    let store: StoreOf<SearchMapStore>
    
    let mapView = NMFMapView()
    
    var body: some View {
        @State var region: (Double, Double) = (37.55037, 127.07435)
        
        @State var isShowingLocationSearchView: Bool = false


        WithViewStore(store) { viewStore in
            ZStack {
                UIMapView()
                    .edgesIgnoringSafeArea(.vertical)

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
                        LocationSearchView(store: store.scope(state: { $0.address }, action: { .updateAddress($0) }))
                        // 총 네 가지 오류입니다
                        
                        // 두 번째 store - Argument passed to call that takes no arguments
                        // scope - Generic parameter 'ChildAction' could not be inferred
                        // address - Type 'SearchMapStore.Action' has no member 'updateAddress' -> SearchMapStore을 LocationSearchStore로 바꾸자니 따라붙은 isTappedLocationSearchBar 때문에 어느 것을 수정해야 할지 모르겠어요..
                        // updateAddress($0) - Value of type 'SearchMapStore.State' has no member 'address' -> 위와 같습니다
                        
                        // searchMapStore - isShowingLocationSearchView, isTappedLocationSearchBar 포함
                        // LocationSearchStore - address, updateAddress 포함
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
                            
                            Button(action: {
                                print("길찾기")
                            }, label: {
                                Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            })
                            .foregroundColor(Color(.red))
                            .background(Color.white)
                            .clipShape(Circle())
                        }
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
                    }
                }
                .padding()
            .background(Color(.black))
            }
        }
    }
}

struct UIMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> NMFNaverMapView {
        let view = NMFNaverMapView()
        view.showZoomControls = false
        view.mapView.positionMode = .direction
        view.mapView.zoomLevel = 17
      
        return view
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) {}
}

struct LocationSearchView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var address: String = ""
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    SearchBar(address: $address)
                }
                    .navigationBarTitle("장소 검색")
                    .toolbar {
                        ToolbarItem {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("닫기")
                                    .foregroundColor(Color(.red))
                            }
                        }
                    }
            }
        }
        .padding()
    }
}


struct SearchMapView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMapView(store: .init(initialState: .init(), reducer: SearchMapStore()._printChanges()))
    }
}
