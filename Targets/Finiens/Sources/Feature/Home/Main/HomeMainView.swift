//
//  HomeMainView.swift
//  Finiens
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import Foundation

import SwiftUI

import ComposableArchitecture

struct HomeMainView: View {
    let store: StoreOf<HomeMainStore>
    
    var body: some View {
        Text("홈 메인 뷰 입니다.")
    }
}

struct HomeMainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainView(
            store: Store(initialState: HomeMainStore.State()) {
                HomeMainStore()._printChanges()
            }
        )
    }
}
