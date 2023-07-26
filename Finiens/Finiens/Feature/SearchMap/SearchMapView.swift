//
//  SearchMapView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI

import ComposableArchitecture

struct SearchMapView: View {
    let store: StoreOf<SearchMapStore>
    
    var body: some View {
        Text("지도 뷰 입니다.")
    }
}

struct SearchMapView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMapView(store: .init(initialState: .init(), reducer: SearchMapStore()._printChanges()))
    }
}
