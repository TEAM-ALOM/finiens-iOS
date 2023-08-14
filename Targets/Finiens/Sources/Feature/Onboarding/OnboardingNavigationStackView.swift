//
//  OnboardingNavigationStackView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct OnboardingNavigationStackView: View {
    let store: StoreOf<OnboardingNavigationStackStore>
    
    public var body: some View {
        NavigationStackStore(self.store.scope(
            state: \.path,
            action: OnboardingNavigationStackStore.Action.path)) {
                WithViewStore(self.store, observe: { $0 }) { viewStore in
                    OnboardingMainView(
                        store: self.store.scope(
                            state: \.main,
                            action: OnboardingNavigationStackStore.Action.main))
                    .onAppear {
                        viewStore.send(.onAppear)
                    }
                }
            } destination: {
                switch $0 {
                case .signUp:
                    CaseLet(
                        /OnboardingNavigationStackStore.Path.State.signUp,
                         action: OnboardingNavigationStackStore.Path.Action.signUp,
                         then: OnboardingSignUpView.init(store:))
                case .userInfo:
                    CaseLet(
                        /OnboardingNavigationStackStore.Path.State.userInfo,
                         action: OnboardingNavigationStackStore.Path.Action.userInfo,
                         then: OnboardingUserInfoView.init(store:))
                case .nickname:
                    CaseLet(
                        /OnboardingNavigationStackStore.Path.State.nickname,
                         action: OnboardingNavigationStackStore.Path.Action.nickname,
                         then: OnboardingNicknameView.init(store:))
                }
            }
    }
}
