//
//  SearchMapStore.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import ComposableArchitecture

struct SearchMapStore: ReducerProtocol {
    struct State: Equatable {
        var isShowingLocationSearchView: Bool = false
        
        var locationSearch: LocationSearchStore.State = .init()
    }
    
    enum Action: Equatable {
        case isTappedLocationSearchBar
        
        case locationSearch(LocationSearchStore.Action)
    }
    
    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .isTappedLocationSearchBar:
                state.isShowingLocationSearchView.toggle()
                return .none
                
            default:
                return .none
            }
        }
    }
}
