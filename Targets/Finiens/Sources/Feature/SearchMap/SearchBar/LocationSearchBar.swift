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
                            .foregroundColor(.gray)
                    }
                } else {
                    EmptyView()
                }
            }
            .accentColor(.red)
            .foregroundColor(.black)
            .padding()
            .frame(width: 361, height: 34)
            .background(Color(.systemGray6))
            .cornerRadius(10)

        }
        .padding(.horizontal)
    }
}
