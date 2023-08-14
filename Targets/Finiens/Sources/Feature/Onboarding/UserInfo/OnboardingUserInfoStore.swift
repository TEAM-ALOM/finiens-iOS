//
//  OnboardingUserInfoStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import ComposableArchitecture

struct OnboardingUserInfoStore: Reducer {

    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        case nextButtonTapped
        
        case delegate(Delegate)
        
        enum Delegate {
            case push
        }
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .nextButtonTapped:
            return .send(.delegate(.push))
            
        default:
            return .none
        }
    }
}
