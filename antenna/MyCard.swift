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
            HStack{
                Image(systemName: "figure.walk").frame(width:16, height:16)
                Text("학교")
                    .font(.system(size:25))
                    .padding(.bottom, 5)
                
            }
            
            Text("서울 광진구 능동로 지하 110")
                .padding(.bottom, 10)
            Text("서울 광진구 능동로 209(군자동)")
            HStack{
                Spacer()
                Text("길찾기")
            }
        }
        .padding(15)
        .background(Color.green)
        .cornerRadius(20)
    }
        
}


struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}


/*Image(systemName: "arrow.triangle.turn.up.right.circle.fill").frame(width:40, height:82)
 .foregroundColor(Color.pink)
 */
