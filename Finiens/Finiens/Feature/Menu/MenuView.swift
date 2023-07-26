//
//  MenuView.swift
//  Finiens
//
//  Created by 송영모 on 2023/07/26.
//

import SwiftUI

import ComposableArchitecture

struct MenuView: View {
    let store: StoreOf<MenuStore>
    
    var body: some View {
        Text("메뉴 뷰 입니다.")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(store: .init(initialState: .init(), reducer: MenuStore()._printChanges()))
    }
}
