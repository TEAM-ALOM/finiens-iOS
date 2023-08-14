//
//  OnboardingNicknameView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct OnboardingNicknameView: View {
    let store: StoreOf<OnboardingNicknameStore>
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("Onboarding Nick name View")
                
                Button("next") {
                    viewStore.send(.nextButtonTapped)
                }
            }
        }
    }
}
