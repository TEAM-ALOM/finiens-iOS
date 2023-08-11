//
//  BasicView.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/07.
//

// 디자인 - 디자인시스템 사용해보기
//.font(.system(size: 20))

import SwiftUI

struct BasicView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("닫기")
                    .font(Font.custom("Apple SD Gothic Neo", size: 17))
                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                    .padding(.trailing, 16)
                    // 피그마 상에서 위에 패딩이 65, 직접 넣으면 그려진 ui와 다름.
            }
            HStack{
                Text("장소 검색")
                    .font(Font.custom("Apple SD Gothic Neo", size: 34))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                    .padding(.top, 16)
                    .padding(.leading, 16)
                Spacer()
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                    .frame(width: 361, height: 34)
                    .cornerRadius(10)
                HStack{
                    Text("검색어 입력")
                        .font(Font.custom("Apple SD Gothic Neo", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        .padding(.leading, 24)
                    Spacer()
                }
            }
            WhereView()
            Spacer()
        }//VStack
    }
}

struct Baisc_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}
