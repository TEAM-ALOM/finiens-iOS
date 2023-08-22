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
        case ZoomInButtonTapped
        case ZoomOutButtonTapped
        case ColoredButtonTapped
        case ScopeButtonTapped
        
        case locationSearch(LocationSearchStore.Action)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .locationSearchBarTapped:
                state.isShowingLocationSearchView.toggle()
                return .none
                
            case .ZoomInButtonTapped:
                state.zoomLevel += 0.6
                return .none
                
            case .ZoomOutButtonTapped:
                state.zoomLevel += 0.6
                return .none

            case .ColoredButtonTapped:
                state.isDefectedArrowButtonVisible.toggle()
                return .none
                
            case .ScopeButtonTapped:
                return .none
                
            default:
                return .none
            }
        }
    }
}
