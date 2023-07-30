//
//  ViewA.swift
//  antenna_mvp
//
//  Created by 김휘선 on 2023/07/29.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        VStack(){
            HStack{
                Text("안테나")
                    .frame(width: 89, height: 41)
                    .font(
                    Font.custom("Apple SD Gothic Neo", size: 34)
                    )
                    .fontWeight(.bold)
                    .font(.system(size:34))
                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                    Spacer()
            }
            .padding(.top, 101)
            .padding(.leading, 16)
            
            HStack(){
                Text("현재 경로")
                    .frame(width: 64, height: 20)
                    .font(
                    Font.custom("Apple SD Gothic Neo", size: 17)
                    )
                    .fontWeight(.bold)
                    .font(.system(size:17))
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                Spacer()
            }
            .padding(.leading, 27)
            .padding(.top, 20)
            .padding(.bottom, 12)
            Finding()
        }
        .padding(.bottom, 225)
        
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
