//
//  RootStore.swift
//  antenna
//
//  Created by 이소리 on 2023/07/21.
//

import Foundation
import ComposableArchitecture

enum RootScene: Hashable {
    case home
    case map
    case menu
}

struct RootStore: ReducerProtocol {
    struct State: Equatable {
        @BindingState var path: [RootScene] = []
        
        var mapStore = MapStore.State()
        var home: HomeStore.State = .init() // HomeStore-State 필요
        var map: MapStore.State = .init()
        var menu: MenuStore.State = .init() // MenuStore-State 필요
    }
    
    enum Action: BindableAction, Equatable {
        case mapStore(MapStore.Action)
        case home(HomeStore.Action)
        case map(MapStore.Action)
        case menu(MenuStore.Action)
    }
    
    var body: some ReducerProtocol<State, Action> {
        Reduce<State, Action> { state, action in
            switch action {
            case .home:
                HomeView()
                return .none
                
            case .map:
                MapView()
                return .none
                
            case .menu:
                MenuView()
                return .none
                
            default:
                return .none
            }
        }
        
        Scope(state: \.home, action: /Action.home) {
            HomeStore()
        }
        Scope(state: \.map, action: /Action.map) {
            MapStore()
        }
        Scope(state: \.menu, action: /Action.menu) {
            MenuStore()
        }
        
    }
}
