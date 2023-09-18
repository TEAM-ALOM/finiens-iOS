//
//  LocationSearchView.swift
//  Finiens
//
//  Created by 송영모 on 2023/08/04.
//

import SwiftUI

import ComposableArchitecture

struct LocationSearchView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var address: String = ""
    
    let store: StoreOf<LocationSearchStore>
    
    init(store: StoreOf<LocationSearchStore>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                NavigationView {
                    VStack {
                        LocationSearchBar(address: $address)
                    }
                        .navigationBarTitle("장소 검색")
                        .toolbar {
                            ToolbarItem {
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss() // dismiss()가 활성화 되지 않음
                                }) {
                                    Text("닫기")
                                        .foregroundColor(Color.keyColor)
                                }
                            }
                        }
                }
            }
            .padding()
        }
    }
}
