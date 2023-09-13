//
//  DepArrBar.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/15.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct DepArrBar: View {
    @State var departure: String = ""
    @State var arrival: String = ""

    func swapDepartureArrival() {
        withAnimation {
            let tmp = departure
            departure = arrival
            arrival = tmp
        }
    }
    
    var body: some View {
        HStack {
            VStack {
                DepartureSearchBar(departure: $departure)
                ArrivalSearchBar(arrival: $arrival)
            }
            Button(action: {
                swapDepartureArrival()
            }) {
                Image(systemName: "arrow.up.arrow.down")
                    .foregroundColor(Color(.red))
            }
        }
        .padding()
        .frame(width: 353, height: 104)
        .background(Color(.white))
        .cornerRadius(20)
    }
}

struct DepArrBar_Previews: PreviewProvider {
    static var previews: some View {
        DepArrBar()
    }
}
