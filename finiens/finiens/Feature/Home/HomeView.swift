//
//  ContentView.swift
//  finiens
//
//  Created by 이소리 on 2023/06/05.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    // 스토어(Store)
    let store: StoreOf<HomeFeature>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                HStack {
                    VStack {
                        Text("출발지 입력")
                        Text("도착지 입력")
                    }
                    Text("검색")
                }
                // 지도 화면
                HStack {
                    Text("홈")
                    Text("저장")
                }
            }
        }
    }
}

//struct CounterView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
