//
//  ViewA.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/06.
//
import SwiftUI

struct ViewA: View { // font custom 적용하기, 즐겨찾는 경로 부분 안맞아보여
    var body: some View {
        VStack(){
            HStack{
                Text("안테나") // font.custom 넣기
                    .frame(width: 89, height: 41)
                    .fontWeight(.bold)
                    .font(.system(size:34))
                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 101)
            //.padding(.bottom, 31)
            HStack(){
                Text("즐겨찾는 경로") // font.custom 넣기
                    .frame(width: 93, height: 20)
                    .fontWeight(.bold)
                    .font(.system(size:17))
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                Spacer()
            }
            .padding(.leading, 26)
            .padding(.bottom, 162) // 여기 위치가 안맞아보임..
            
            VStack(){
                Text("즐겨찾는 경로가 없어요.")
                    .font(
                    Font.custom("Apple SD Gothic Neo", size: 20)
                    .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                    .padding(.bottom,20)
                Text("경로 찾으로 가기")
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




/* 즐겨찾는 경로가 없는 경우
 import SwiftUI

 struct ViewA: View { // font custom 적용하기, 즐겨찾는 경로 부분 안맞아보여
     var body: some View {
         VStack(){
             HStack{
                 Text("안테나") // font.custom 넣기
                     .frame(width: 89, height: 41)
                     .fontWeight(.bold)
                     .font(.system(size:34))
                     .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                 Spacer()
             }
             .padding(.leading, 16)
             .padding(.top, 101)
             //.padding(.bottom, 31)
             HStack(){
                 Text("즐겨찾는 경로") // font.custom 넣기
                     .frame(width: 93, height: 20)
                     .fontWeight(.bold)
                     .font(.system(size:17))
                     .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                 Spacer()
             }
             .padding(.leading, 26)
             .padding(.bottom, 162) // 여기 위치가 안맞아보임..
             
             VStack(){
                 Text("즐겨찾는 경로가 없어요.")
                     .font(
                     Font.custom("Apple SD Gothic Neo", size: 20)
                     .weight(.semibold)
                     )
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                     .padding(.bottom,20)
                 Text("경로 찾으로 가기")
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
