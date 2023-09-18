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
                        .foregroundColor(.shapeQuaternaryColor)
                }
            } else {
                EmptyView()
            }
        }
        .padding()
        .frame(width: 292, height: 34)
        .background(Color.shapeSecondaryColor)
        .accentColor(.keyColor)
        .foregroundColor(.textColor)
        .cornerRadius(10)

    }
}
