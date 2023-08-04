//
//  LocationSearchStore.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/03.
//

import ComposableArchitecture

struct LocationSearchStore: ReducerProtocol {
    struct State: Equatable {
        var address: String = ""
    }
    
    enum Action: Equatable {
        case updateAddress(String)
    }
    
    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case let .updateAddress(address):
                state.address = address
                return .none
            }
        }
    }
}


