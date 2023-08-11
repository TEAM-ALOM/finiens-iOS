//
//  where.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/08.
//

import SwiftUI

struct WhereView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 353, height: 66)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
            HStack{
                VStack{
                    HStack{
                        Image(systemName: "mappin.circle.fill") // 심볼의 위치 잡아주기
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                            .padding(.trailing, 19)
                        Text("잠실한강공원")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 15)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                        }
                    HStack{
                        Text("3.6km")
                            .font(Font.custom("SF Pro Text", size: 12))
                            .foregroundColor(Color(red: 1, green: 0.63, blue: 0.63))
                            .padding(.leading, 32)
                        Text("서울 송파구 잠실동 1-1") // 여기서 검색어 부분만 색상 바꾸는 거 how?
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        }
                }
                Spacer()
                Text("지도 보기")
                    .font(Font.custom("SF Pro Text", size: 12))
                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                    .padding(.trailing, 32)
            }
        } // ZStack
    }
}

struct Where_Previews: PreviewProvider {
    static var previews: some View {
        WhereView()
    }
}


//검색어 부분만 핑크색 글씨로 처리하는거
//Api 사용하는거
