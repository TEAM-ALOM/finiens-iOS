//
//  MapView.swift
//  antenna
//
//  Created by 이소리 on 2023/07/14.
//

import SwiftUI
import ComposableArchitecture

struct MapView: View {

    // Store
    let store: StoreOf<MapStore>
    
    init(store: StoreOf<MapStore>) {
        self.store = store
        self.viewStore = ViewStore(self.store.scope(state: ViewState.init(state:)))
    }
    
    var body: some View {
        // 장소 검색 바
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                ForEachStore(self.store.scope(
                    state: \.Location,
                    action: MapStore.Action.textchange(id: action:))) {
                        LocationSearchView(store: $0)
                    }
                Button {
                    viewStore.send(.searchingLocationView)
                } label: {
                    Text("장소 검색")
                    Spacer()
                    Image("magnifyingglass")
                        .padding()
                        .frame(maxWidth: .infinity)
                }
                // fullScreenCover or SearchingLocationView

                .cornerRadius(10)
                .foregroundColor(.gray)
                
                // 버튼들 생성만
                HStack {
                    VStack {
                        Button {
                            Image("plus.circle.fill")
                        }
                        Button {
                            Image("minus.circle.fill")
                        }
                    }
                    Spacer()
                    
                    VStack {
                        Button {
                            Image("arrow.triangle.up.right.circle.fill")
                        }
                        Button {
                            // 현재 위치 이미지
                        }
                    }
                }
                    
            }
            .padding()
            .onAppear{ viewStore.send(.onAppear) }
        }
    }
}

// 지도 화면이긴 한데-root뷰 같은 데서 한번에 묶으면 좋을 듯
//TabView {
//    // 홈
//    VStack {
////                    HomeView()
//    }
//    .tabItem {
//        Text("홈")
//    }
//    // 지도
//
//    .tabItem {
//        Text("지도")
//    }
//    // 메뉴
//    VStack {
////                    MenuView
//    }
//    .tabItem {
//        Text("메뉴")
//    }
//}

struct LocationSearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            Text("\(searchText)")
        }
        .searchable(text: $searchText, prompt: "장소 검색")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(store:
                    Store(
                        initialState: MapStore.State,
                        reducer: MapStore()
                         )
        )
    }
}
