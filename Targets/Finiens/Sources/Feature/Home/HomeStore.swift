//
//  HomeStore.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import ComposableArchitecture

struct HomeStore: Reducer {
    struct State: Equatable { }
    
    enum Action: Equatable {
        case tmp
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .tmp:
            return .none
        }
    }
}
