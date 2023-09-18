//
//  SearchMapStore.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import Foundation
import ComposableArchitecture

struct SearchMapStore: Reducer {
    struct State: Equatable {
        var isShowingLocationSearchView: Bool = false
        var isDefectedArrowButtonVisible: Bool = true
        
        var zoomLevel: Double = 17.0
        
        var locationSearch: LocationSearchStore.State = .init()
    }
    
    enum Action: Equatable {
        case locationSearchBarTapped
        case zoomInButtonTapped
        case zoomOutButtonTapped
        case coloredButtonTapped
        case scopeButtonTapped
        
        case locationSearch(LocationSearchStore.Action)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .locationSearchBarTapped:
                state.isShowingLocationSearchView.toggle()
                return .none
                
            case .zoomInButtonTapped:
                state.zoomLevel += 0.6
                return .none
                
            case .zoomOutButtonTapped:
                state.zoomLevel += 0.6
                return .none

            case .coloredButtonTapped:
                state.isDefectedArrowButtonVisible.toggle()
                return .none
                
            case .scopeButtonTapped:
                return .none
                
            default:
                return .none
            }
        }
    }
}
