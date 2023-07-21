//
//  MapStore.swift
//  antenna
//
//  Created by 이소리 on 2023/07/14.
//

import Foundation
import ComposableArchitecture

struct MapStore: ReducerProtocol {
    // State
    struct State: Equatable {
        @BindingState var location: String = ""
    }
    
    // Action
    enum Action: Equatable {
        case locationSearchBarTapped
        case zoomInButtonTapped
        case zoomOutButtonTapped
        case routeSearchButtonTapped
        case myLocationButtonTapped
        case homeTapped
        case mapTapped
        case menuTapped
    }
    
    // Environment
    
    // Reducer
    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .locationSearchBarTapped:
                // 장소 검색 뷰로 전환
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
                
            case .homeTapped:
                // 홈 뷰로 전환
                return .none
                
            case .mapTapped:
                // 현재 뷰 -> 변경사항 없음
                return .none
                
            case .menuTapped:
                // 메뉴 뷰로 전환
                return .none
            }
        }
    }
}
