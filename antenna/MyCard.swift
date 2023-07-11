//
//  MyCard.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/07.
//

import SwiftUI // 두 점모양의 심볼 사이에 선 구현 , 그 상하좌우 간격 체크 

struct MyCard: View{
    var body: some View{
        VStack(){
            Rectangle()
                .foregroundColor(.clear)
                .frame(width:353, height: 114)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                .overlay(
                    HStack(){
                        VStack(alignment: .leading){
                            HStack(){
                                Image(systemName: "figure.walk")
                                    .frame(width:16, height:16)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                                    .padding(.trailing, 8)
                                Text("학교")
                                    .font(
                                    Font.custom("Apple SD Gothic Neo", size: 15)
                                    .weight(.bold)
                                    )
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                Spacer()
                            }
                            .padding(.leading, 16)
                            
                            
                            HStack(){
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                    .frame(width:5, height:5)
                                    .padding(.trailing, 13)
                                
                                Text("서울 광진구 능동로 지하 110")
                                    .font(
                                    Font.custom("Apple SD Gothic Neo", size: 12)
                                    .weight(.medium)
                                    )
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                            }
                            .padding(.leading, 18)
                            
                            HStack(){
                                Image(systemName: "circle.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                    .frame(width:9, height:9)
                                    .padding(.trailing, 11)
                                Text("서울 광진구 능동로 209(군자동)")
                                    .font(
                                    Font.custom("Apple SD Gothic Neo", size: 12)
                                    .weight(.medium)
                                    )
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                
                            }
                            .padding(.leading, 16)
                            
                        }
                        VStack(){
                            Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                .padding(.trailing, 16)
                                .padding(.top, 16)
                                Spacer()

                                
                            Text("길찾기")
                                .font(
                                Font.custom("Apple SD Gothic Neo", size: 12)
                                .weight(.semibold)
                                )
                                .frame(width:32, height:14)
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                .padding(.trailing, 20)
                                Spacer()
                                
                            
                        }
                    }
                )
                
        }
    }
        
}


struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}




/*
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
 .background(.green)
 .cornerRadius(20)
 */
