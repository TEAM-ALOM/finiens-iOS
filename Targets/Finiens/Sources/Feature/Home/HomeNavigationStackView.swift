//
//  HomeNavigationStackView.swift
//  Finiens
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct HomeNavigationStackView: View {
    let store: StoreOf<HomeNavigationStackStore>
    
    public var body: some View {
        NavigationStackStore(self.store.scope(
            state: \.path,
            action: HomeNavigationStackStore.Action.path)) {
                WithViewStore(self.store, observe: { $0 }) { viewStore in
                    HomeMainView(
                        store: self.store.scope(
                            state: \.main,
                            action: HomeNavigationStackStore.Action.main))
                    .onAppear {
                        viewStore.send(.onAppear)
                    }
                }
            } destination: {
                switch $0 {
                case .signUp:
                    CaseLet(
                        /HomeNavigationStackStore.Path.State.signUp,
                         action: HomeNavigationStackStore.Path.Action.signUp,
                         then: OnboardingSignUpView.init(store:))
                case .userInfo:
                    CaseLet(
                        /HomeNavigationStackStore.Path.State.userInfo,
                         action: HomeNavigationStackStore.Path.Action.userInfo,
                         then: OnboardingUserInfoView.init(store:))
                case .nickname:
                    CaseLet(
                        /HomeNavigationStackStore.Path.State.nickname,
                         action: HomeNavigationStackStore.Path.Action.nickname,
                         then: OnboardingNicknameView.init(store:))
                }
            }
    }
}
