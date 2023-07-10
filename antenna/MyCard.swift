//
//  MyCard.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/07.
//

import SwiftUI

struct MyCard: View{
    var body: some View{
        
        
        VStack(alignment: .leading){
            Rectangle().frame(height:0)
            Text("학교")
                .font(.system(size:25))
                .padding(.bottom, 5)
            Text("서울 광진구 능동로 지하 110")
                .padding(.bottom, 10)
            Text("서울 광진구 능동로 209(군자동)")
            HStack{
                Spacer()
                Text("1.2km")
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}
