//
//  OnboardingNavigationStackStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import ComposableArchitecture

struct OnboardingNavigationStackStore: Reducer {
    
    struct State: Equatable {
        var main: OnboardingMainStore.State = .init()
        
        var path: StackState<Path.State> = .init()
    }
    
    enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        
        case onAppear
        
        case main(OnboardingMainStore.Action)
        
        case path(StackAction<Path.State, Path.Action>)
        
        case delegate(Delegate)
        
        enum Delegate {
            case complete
        }
    }
    
    struct Path: Reducer {
        public enum State: Equatable {
            case signUp(OnboardingSignUpStore.State)
            case userInfo(OnboardingUserInfoStore.State)
            case nickname(OnboardingNicknameStore.State)
        }
        
        public enum Action: Equatable {
            case signUp(OnboardingSignUpStore.Action)
            case userInfo(OnboardingUserInfoStore.Action)
            case nickname(OnboardingNicknameStore.Action)
        }
        
        public var body: some Reducer<State, Action> {
            Scope(state: /State.signUp, action: /Action.signUp) {
                OnboardingSignUpStore()._printChanges()
            }
            Scope(state: /State.userInfo, action: /Action.userInfo) {
                OnboardingUserInfoStore()._printChanges()
            }
            Scope(state: /State.nickname, action: /Action.nickname) {
                OnboardingNicknameStore()._printChanges()
            }
        }
    }
    
    public var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .none
                
            case .main(.delegate(.push)):
                //다음 화면인 sign up으로 이동
                state.path.append(.signUp(.init()))
                return .none
                
            case .path(.element(id: _, action: .signUp(.delegate(.push)))):
                //다음 화면인 userInfo로 이동
                state.path.append(.userInfo(.init()))
                return .none
                
            case .path(.element(id: _, action: .userInfo(.delegate(.push)))):
                //다음 화면인 nickname으로 이동
                state.path.append(.nickname(.init()))
                return .none
                
            case .path(.element(id: _, action: .nickname(.delegate(.push)))):
                //온보딩 종료 부모(RootStore)에게 complete action 전송
                return .send(.delegate(.complete))
                
            default:
                return .none
            }
        }
        
        Scope(state: \.main, action: /Action.main) {
            OnboardingMainStore()._printChanges()
        }
        
        .forEach(\.path, action: /Action.path) {
            Path()
        }
    }
}
