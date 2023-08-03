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
    }
    
    enum Action: Equatable {
        case isTappedLocationSearchBar
    }
    
    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .isTappedLocationSearchBar:
                state.isShowingLocationSearchView.toggle()
                return .none
            }
        }
    }
}
