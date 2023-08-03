//
//  Errorpage.swift
//  mvp
//
//  Created by 김휘선 on 2023/08/01.
//

import SwiftUI

struct Errorpage: View {
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
                ZStack{
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 353, height: 51)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.2), radius: 2.5, x: 0, y: 0)
                    
                    Text("알 수 없는 오류가 발생했어요 :(")
                    .font(
                    Font.custom("Apple SD Gothic Neo", size: 16)
                    .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 1, green: 0.34, blue: 0.34))
                }
                Spacer()
            }
            .padding(.leading, 20)
            .padding(.bottom, 191)
            
            Text("현재 안내 중인 경로가 없어요.")
            .font(
            Font.custom("Apple SD Gothic Neo", size: 20)
            .weight(.semibold)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
            .padding(.bottom, 20)
            Text("경로 찾으러가기")
                .font(
                    Font.custom("Apple SD Gothic Neo", size: 20)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
        }
        .padding(.bottom, 392)
        
        
    }
}

struct Errorpage_Previews: PreviewProvider {
    static var previews: some View {
        Errorpage()
    }
}


