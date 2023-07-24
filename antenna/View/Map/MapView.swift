//
//  MapView.swift
//  antenna
//
//  Created by 이소리 on 2023/07/14.
//

import SwiftUI
import ComposableArchitecture

struct MapView: View {
    
    @ObservedObject var viewSotre: ViewStore<MapStore.State, MapStore.Action>

    // Store
    let store: StoreOf<MapStore>
    
    init(store: StoreOf<MapStore>) {
        self.store = store
        // 초기화 되지 않아 오류가 생김
    }
    
    var body: some View {
        // 장소 검색 바
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Button {
                    // 장소 검색 바
                } label: {
                    Text("장소 검색")
                    Spacer()
                    Image("magnifyingglass")
                        .padding()
                        .frame(maxWidth: .infinity)
                }

                .cornerRadius(10)
                .foregroundColor(.gray)
                
                // 버튼들 생성만
                HStack {
                    VStack {
                        Button {
                            // zoom-in
                        } label: {
                            Image("plus.circle.fill")

                        }
                        Button {
                            // zoom-out
                        } label: {
                            Image("minus.circle.fill")
                        }
                    }
                    Spacer()
                    
                    VStack {
                        Button {
                            // 출발지-검색지 검색 창으로 변경
                        } label: {
                            Image("arrow.triangle.up.right.circle.fill")

                        }
                        Button {
                            // 현재 위치로 이동
                        } label: {
                            Image("scope")
                        }
                    }
                }
                    
            }
            .padding()
        }
    }
}

//struct LocationSearchView: View {
//    @State private var searchText: String = ""
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("\(searchText)")
//            }
//            .searchable(text: $searchText, prompt: "장소 검색")
//        }
//    }
//}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(store:
                    Store(
                        initialState: MapStore.State(),
                        reducer: MapStore()
                         )
        )
    }
}
