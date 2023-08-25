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

struct SearchMapView: View {
    let store: StoreOf<SearchMapStore>
    
    @State var departure: String = ""
    @State var arrival: String = ""

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            ZStack {
                MapView()
                    .edgesIgnoringSafeArea(.top)

                VStack {
                    if viewStore.isDefectedArrowButtonVisible {
                        locationSearchBarView(viewStore: viewStore)
                    }
                    
                    else {
                        depArrBarView()
                    }
                    Spacer()
                    
                    VStack {
                        HStack {
                            CircleButton(image: "plus") {
                                viewStore.send(.ZoomInButtonTapped)
                            }
                            Spacer()
                            
                            VStack {
                                if viewStore.isDefectedArrowButtonVisible {
                                    CircleButton(image: "arrow.triangle.turn.up.right.circle.fill") {
                                        viewStore.send(.ColoredButtonTapped)
                                    }
                                }
                                else {
                                    CircleButton(image: "xmark.circle.fill") {
                                        viewStore.send(.ColoredButtonTapped)
                                    }
                                }
                            }
                        }
                        .padding(.vertical, 5.0)

                        HStack {
                            CircleButton(image: "minus") {
                                viewStore.send(.ZoomOutButtonTapped)
                            }
                            Spacer()
                            
                            CircleButton(image: "scope") {
                                viewStore.send(.ScopeButtonTapped)
                            }
                        }
                        .padding(.vertical, 5.0)
                    }
                    .padding(.vertical)
                }
                .padding()
            }
        }
    }
    
    private func locationSearchBarView(viewStore: ViewStoreOf<SearchMapStore>) -> some View {
            HStack {
                Button(action: {
                    viewStore.send(.locationSearchBarTapped)
                }) {
                    Text("장소 검색")
                        .foregroundColor(Color(.gray))
                }
                Spacer()
                
                Image(systemName: "magnifyingglass")
            }
            .padding()
            .frameStyle(width: 353, height: 34, backgroundColor: .white, cornerRadius: 8)
            .fullScreenCover(isPresented: viewStore.binding(get: \.isShowingLocationSearchView, send: SearchMapStore.Action.locationSearchBarTapped)) {
                LocationSearchView(store: self.store.scope(state: \.locationSearch, action: SearchMapStore.Action.locationSearch))
            }
    }
        
    private func depArrBarView() -> some View {
        HStack {
            VStack {
                DepartureSearchBar(departure: $departure)
                ArrivalSearchBar(arrival: $arrival)
            }
            Button(action: {
                swapDepartureArrival()
            }) {
                Image(systemName: "arrow.up.arrow.down")
                    .foregroundColor(Color(.red))
            }
        }
        .padding()
        .frameStyle(width: 353, height: 104, backgroundColor: .white, cornerRadius: 20)
    }
    
    private func swapDepartureArrival() {
        withAnimation {
            let tmp = departure
            departure = arrival
            arrival = tmp
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
