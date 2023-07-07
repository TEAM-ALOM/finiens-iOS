//
//  HomeStore.swift
//  finiens
//
//  Created by 이소리 on 2023/06/06.
//

import Foundation
import ComposableArchitecture

struct HomeFeature: ReducerProtocol {
    
    // 상태(State)
    struct HomeState: Equatable {
        var arrival = ""
        var departure = ""
    }

    // 액션(Action)
    enum HomeAction: Equatable {
        case arrivalButtonTapped
        case departureButtonTapped
        case searchButtonTapped
        case homeButtonTapped
        case saveListButtonTapped
    }

    // 환경(Environment)

    // 리듀서(Reducer)
    func reduce(into state: inout HomeState, action: HomeAction) -> EffectTask<HomeAction> {
        switch action {
        case .arrivalButtonTapped:
            state.arrival = readLine()!
            return .none
            
        case .departureButtonTapped:
            state.departure = readLine()!
            return .none
            
        case .searchButtonTapped:
            // 화면 전환
            return .none
            
        case .homeButtonTapped:
            // 화면 전환 -> 보고 있는 화면이므로 변화는 없음
            return .none
            
        case .saveListButtonTapped:
            // 저장한 경로 화면으로 전환
            return .none
        }
    }
}

