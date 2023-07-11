//
//  Total.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/11.
//

import SwiftUI // 연습

struct Total: View{
    var body: some View{
        ScrollView(){
            VStack(){
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
            }.padding()
        }
       
    }
}


struct Total_Previews: PreviewProvider {
    static var previews: some View {
        Total()
    }
}

