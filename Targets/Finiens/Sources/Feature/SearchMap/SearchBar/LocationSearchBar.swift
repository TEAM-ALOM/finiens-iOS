//
//  SearchBar.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/04.
//

import SwiftUI

struct LocationSearchBar: View {
    
    @Binding var address: String

    var body: some View {
        HStack {
            HStack {
                TextField("장소 검색", text: $address)
                    .foregroundColor(.primary)

                if !address.isEmpty {
                    Button(action: {
                        self.address = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.shapeQuaternaryColor)
                    }
                } else {
                    EmptyView()
                }
            }
            .accentColor(.keyColor)
            .foregroundColor(.textColor)
            .padding()
            .frame(width: 361, height: 34)
            .background(Color.shapeSecondaryColor)
            .cornerRadius(10)

        }
        .padding(.horizontal)
    }
}
