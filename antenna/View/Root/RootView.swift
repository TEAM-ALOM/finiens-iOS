//
//  RootView.swift
//  antenna
//
//  Created by 이소리 on 2023/07/21.
//

import SwiftUI
import ComposableArchitecture

struct RootView: View {
    let store: StoreOf<
    var body: some View {
        TabView {
            // 홈
            VStack {
                
            }
            .tabItem {
                Text("홈")
            }
            VStack { //
                MapView(
                    store: self.store.scope(
                        state: \.MapView.State(), // state에 따로 정의, MapView라는 파일 존재,
                        action: MapStore.Action) // action에 동일 이름 case 존재 - 그 속에 또 action..?
            }
            .tabItem {
                Text("지도")
            }
            // 메뉴
            VStack {
        //                    MenuView
            }
            .tabItem {
                Text("메뉴")
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}


