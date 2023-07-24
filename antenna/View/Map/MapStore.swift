//
//  MapStore.swift
//  antenna
//
//  Created by 이소리 on 2023/07/14.
//

import Foundation
import ComposableArchitecture

struct MapStore: ReducerProtocol {
    struct State: Equatable {
//        var location: String = "" -> 버튼
        var departures: String = ""
        var arrivals: String = ""
        let stateInstance = CellStore.State(text: "none")
    }
    
    // Action
    enum Action: Equatable {
        case locationSearchBarTapped
        case departuresBarTapped
        case arrivalsBarTapped
        case updownArrowButtonTapped
        case zoomInButtonTapped
        case zoomOutButtonTapped
        case routeSearchButtonTapped
        case myLocationButtonTapped
    }
    
    // Environment
    
    // Reducer
    var body: some ReducerProtocol<State, Action> {
        
        Reduce { state, action in
            switch action {
            case .locationSearchBarTapped:
                state.showLocationSearchView = true
                return .none
                // 장소 검색 fullScreenCoverView
                // locationSearchView()
//                return .fullScreenCover(
//                    isPresented: Store.binding(
//                        get: \.showLocationSearchView,
//                        send: Action.locationSearchViewDismissed
//                    ),
//                    content: {
//                        let locationSearchViewStore = self.store.scope(
//                            state: { LocationSearchState(showLocationSearchView: $0.showLocationSearchView) }, // LocationSearch(State, View), showLocationSearchview, -Dismissed 필요
//                            action: Action.LocationSearchView
//                        )
//                        LocationSearchView(store: locationSearchViewStore)
//                    }
//                )
                
            case .departuresBarTapped:
//                state.departures = stateInstance.text // CellStore.State.text를 끌어오려고 stateInstance를 선언하였음 -> 안 됨..
                return .none
                
            case .arrivalsBarTapped:
//                state.arrivals = stateInstance.text
                return .none
                
            case .updownArrowButtonTapped:
                // departures 값과 arrivals 값 교환
                return .none

            case .zoomInButtonTapped:
                // 화면 확대
                return .none
                
            case .zoomOutButtonTapped:
                // 화면 축소
                return .none
                                
            case .routeSearchButtonTapped:
                // 출발지-도착지 검색창으로 변경
                // x버튼으로 변경
                return .none
                
            case .myLocationButtonTapped:
                // 현재 내 위치로 이동
                return .none
            }
        }
    }
}
