//
//  DepartureSearchBar.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/09.
//

import SwiftUI

struct DepartureSearchBar: View {
    
    @Binding var departure: String

    var body: some View {
        HStack {
            TextField("출발지", text: $departure)
            
            if !departure.isEmpty {
                Button(action: {
                    self.departure = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            } else {
                EmptyView()
            }
        }
        .padding()
        .frame(width: 292, height: 34)
        .background(Color(uiColor: .secondarySystemBackground))
        .accentColor(.red)
        .foregroundColor(.black)
        .cornerRadius(10)

    }
}
