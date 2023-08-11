//
//  MainTabStore.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import Foundation

import ComposableArchitecture

enum MainScene: Hashable {
    case home
    case searchMap
    case menu
}

struct MainTabViewStore: Reducer {

    struct State: Equatable {
        var currentScene: MainScene = .home
        
        var home: HomeStore.State = .init()
        var searchMap: SearchMapStore.State = .init()
        var menu: MenuStore.State = .init()
    }
    
    enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        
        case selectTab(MainScene)
        
        case home(HomeStore.Action)
        case searchMap(SearchMapStore.Action)
        case menu(MenuStore.Action)
    }
    
    public var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            default: return .none
            }
        }
        
        Scope(state: \.home, action: /Action.home) {
            HomeStore()._printChanges()
        }
        
        Scope(state: \.searchMap, action: /Action.searchMap) {
            SearchMapStore()._printChanges()
        }
        
        Scope(state: \.menu, action: /Action.menu) {
            MenuStore()._printChanges()
        }
    }
}
