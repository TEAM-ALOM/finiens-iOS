//
//  RootView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/27.
//

import SwiftUI

import ComposableArchitecture

struct RootView: View {
    let store: StoreOf<RootStore>
    
    var body: some View {
        SwitchStore(self.store) {
            CaseLet(state: /RootStore.State.mainTab, action: RootStore.Action.mainTab) {
                MainTabView(store: $0)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(store: .init(initialState: .init(), reducer: RootStore()._printChanges()))
    }
}
