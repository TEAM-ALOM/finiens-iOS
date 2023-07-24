//
//  CellStore.swift
//  antenna
//
//  Created by 이소리 on 2023/07/23.
//

import Foundation
import ComposableArchitecture

struct CellStore: ReducerProtocol {
    struct State: Equatable {
        var text: String = ""
    }
    
    enum Action: Equatable {
        case textChanged(String)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case let .textChanged(text):
            state.text = text
            return .none
        }
    }
}
