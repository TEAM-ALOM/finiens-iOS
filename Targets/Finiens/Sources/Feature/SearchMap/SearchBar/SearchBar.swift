//
//  SearchBar.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/15.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct SearchBar: View {
    let store: StoreOf<SearchMapStore>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            // 장소 검색 바
            if viewStore.isDefectedArrowButtonVisible {
                HStack {
                    Button(action: {
                        viewStore.send(.isTappedLocationSearchBar)
                    }) {
                        Text("장소 검색")
                            .foregroundColor(Color(.gray))
                    }
                    Spacer()
                    Image(systemName: "magnifyingglass")
                }
                .padding()
                .frame(width: 353, height: 34)
                .background(Color(.white))
                .cornerRadius(8)
                .fullScreenCover(isPresented: viewStore.binding(get: \.isShowingLocationSearchView, send: SearchMapStore.Action.isTappedLocationSearchBar)) {
                    LocationSearchView(store: self.store.scope(state: \.locationSearch, action: SearchMapStore.Action.locationSearch))
                }
            }
            else {
                DepArrBar();
            }
        }
    }
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar()
//    }
//}
