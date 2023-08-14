//
//  HomeMainStore.swift
//  Finiens
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import Foundation

import ComposableArchitecture

struct HomeMainStore: Reducer {
    struct State: Equatable { }
    
    enum Action: Equatable {
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        default: return .none
        }
    }
}
