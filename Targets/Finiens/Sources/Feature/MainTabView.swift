//
//  MainTabView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI

import ComposableArchitecture

struct MainTabView: View {
    let store: StoreOf<MainTabViewStore>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            TabView {
                HomeNavigationStackView(store: self.store.scope(state: \.home, action: { .home($0) }))
                    .tabItem {
                      Image(systemName: "house.fill")
                      Text("홈")
                    }
                
                SearchMapView(store: self.store.scope(state: \.searchMap, action: { .searchMap($0) }))
                    .tabItem {
                      Image(systemName: "map.fill")
                      Text("지도")
                    }
                
                MenuView(store: self.store.scope(state: \.menu, action: { .menu($0) }))
                    .tabItem {
                      Image(systemName: "line.3.horizontal")
                      Text("메뉴")
                    }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(store: Store(initialState: MainTabViewStore.State()) {
            MainTabViewStore()._printChanges()
        })
    }
}
