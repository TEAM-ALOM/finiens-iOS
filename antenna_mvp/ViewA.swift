//
//  ViewA.swift
//  antenna_mvp
//
//  Created by 김휘선 on 2023/07/22.
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
                    .frame(width: 93, height: 20)
                    .font(
                    Font.custom("Apple SD Gothic Neo", size: 17)
                    )
                    .fontWeight(.bold)
                    .font(.system(size:17))
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                Spacer()
            }
            .padding(.leading, 27)
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



/*
 VStack(){
     Text("현재 안내 중인 경로가 없어요.")
         .font(
         Font.custom("Apple SD Gothic Neo", size: 20)
         .weight(.semibold)
         )
         .multilineTextAlignment(.center)
         .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
         .padding(.bottom,20)
         .fixedSize(horizontal: true, vertical: false)
     
     
     Text("경로 찾으러가기")
         .font(
         Font.custom("Apple SD Gothic Neo", size: 20)
         .weight(.semibold)
         )
         .multilineTextAlignment(.center)
         .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
 }
 .frame(width:189, height:68)
 Spacer()
 */


/* 완전 기본 화면
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
             .padding(.leading, 16)
             .padding(.top, 101)
             
             
             HStack(){
                 Text("현재 경로")
                     .frame(width: 93, height: 20)
                     .font(
                     Font.custom("Apple SD Gothic Neo", size: 17)
                     )
                     .fontWeight(.bold)
                     .font(.system(size:17))
                     .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                 Spacer()
             }
             .padding(.leading, 27)
             .padding(.bottom, 162)
             
            
             
             VStack(){
                 Text("현재 안내 중인 경로가 없어요.")
                     .font(
                     Font.custom("Apple SD Gothic Neo", size: 20)
                     .weight(.semibold)
                     )
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                     .padding(.bottom,20)
                     .fixedSize(horizontal: true, vertical: false)
                 
                 
                 Text("경로 찾으러가기")
                     .font(
                     Font.custom("Apple SD Gothic Neo", size: 20)
                     .weight(.semibold)
                     )
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
             }
             .frame(width:189, height:68)
             Spacer()
         }
         
     }
 }

 struct ViewA_Previews: PreviewProvider {
     static var previews: some View {
         ViewA()
     }
 }

 */
