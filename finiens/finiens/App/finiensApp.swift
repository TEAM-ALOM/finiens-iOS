//
//  finiensApp.swift
//  finiens
//
//  Created by 이소리 on 2023/06/05.
//

import SwiftUI
import ComposableArchitecture

@main
struct finiensApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(
                store: Store(
                    initialState: HomeFeature.HomeState(),
                    reducer: HomeFeature()
                )
            )
        }
    }
}
