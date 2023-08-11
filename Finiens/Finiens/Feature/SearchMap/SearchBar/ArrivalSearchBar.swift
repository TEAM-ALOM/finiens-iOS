//
//  ArrivalSearchBar.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/09.
//

import SwiftUI

struct ArrivalSearchBar: View {
    
    @Binding var arrival: String
    
    var body: some View {
        HStack {
            TextField("도착지", text: $arrival)
            
            if !arrival.isEmpty {
                Button(action: {
                    self.arrival = ""
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
