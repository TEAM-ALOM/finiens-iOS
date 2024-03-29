//
//  finding.swift
//  mvp
//
//  Created by 김휘선 on 2023/08/01.
//
import SwiftUI

struct Finding: View {
    @State private var showDetail = false
    @State private var rectangleHeight: CGFloat = 432 // 직사각형의 초기 높이 설정, chevron 클릭 시 538
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading){
                    Group{ // 21:59 도착부터 13분 도착 직전까지
                        HStack{
                            Text("21:59")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                .padding(.leading, 16)
                            Text("도착")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.bold)
                                )
                                .foregroundColor(.black)
                            Spacer()
                            Text("18분")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                            Text("남음")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.bold)
                                )
                                .foregroundColor(.black)
                                .padding(.trailing, 16)
                        }
                        HStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                .frame(width: 12, height: 12)
                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                .padding(.leading, 22)
                            Text("세종대학교")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 18)
                        }
                        HStack{
                            VStack{
                                Image(systemName: "figure.walk")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                                Image(systemName: "arrowtriangle.down.fill")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                            }
                            .padding(.leading, 22)
                            Text("걷기")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 18)
                            
                            Text("도보 274m, 5분 소요")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            ZStack{
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color(red: 0.45, green: 0.5, blue: 0))
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .padding(.leading, 18)
                                Text("7")
                                    .font(
                                        Font.custom("Apple SD Gothic Neo", size: 11)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding(.leading, 18)
                            }
                            Text("어린이대공원역 승차")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 14)
                            Text("석남(거북시장)방면")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                .foregroundColor(Color(red: 0.45, green: 0.5, blue: 0))
                                .padding(.leading, 24)
                            Text("빠른 환승 1-1")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 20)
                        }
                        HStack{
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                .foregroundColor(Color(red: 0.45, green: 0.5, blue: 0))
                                .padding(.leading, 24)
                            Text("2분")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 20)
                            Text("1개역 이동")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                .padding(.leading, 8)
                        }
                        HStack{
                            ZStack{
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color(red: 0.45, green: 0.5, blue: 0))
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .padding(.leading, 18)
                                Text("하차")
                                    .font(
                                        Font.custom("Apple SD Gothic Neo", size: 8)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding(.leading, 18)
                            }
                            Text("건대입구역 하차")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 14)
                            Text("8번 출구")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            VStack{
                                Image(systemName: "figure.walk")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                                Image(systemName: "arrowtriangle.down.fill")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                            }
                            .padding(.leading, 22)
                            Text("걷기")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 18)
                            
                            Text("도보 274m, 5분 소요")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            ZStack{
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .padding(.leading, 18)
                                Text("2")
                                    .font(
                                        Font.custom("Apple SD Gothic Neo", size: 11)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding(.leading, 18)
                            }
                            Text("건대입구역 승차")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 13)
                            Text("구의 방면")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                .padding(.leading, 24)
                            Text("빠른 하차 3-4, 9-3")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 20)
                        }
                    }
                    Group{ // 13분부터 종합운동장역 2호선 도착까지
                        HStack{
                            VStack{
                                Button(action: {
                                    showDetail.toggle()
                                }){
                                    HStack{
                                        Image(systemName: "arrowtriangle.down.fill")
                                            .resizable()
                                            .frame(width: 8, height: 8)
                                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                            .padding(.leading, 24)
                                        
                                        Text("13분")
                                            .font(
                                                Font.custom("Apple SD Gothic Neo", size: 11)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            .padding(.leading, 20)
                                        
                                        Button {
                                            withAnimation {
                                                showDetail.toggle()
                                                rectangleHeight = showDetail ? 538 : 433 // showDetail 상태에 따라 높이 업데이트
                                            }
                                        } label: {
                                            Text("6개역 이동")
                                                .font(
                                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                                        .weight(.semibold)
                                                )
                                                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                                .padding(.leading, 8)
                                            Image(systemName: showDetail ? "chevron.up" : "chevron.down")
                                                .resizable()
                                                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                                .frame(width: 8, height: 4.90501)
                                        }
                                    }
                                    Spacer()
                                }
                                VStack(alignment: .leading ) { // 상세보기 부분 시작 ( 글자 사이 간격 )
                                    if showDetail {
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 8, height: 8)
                                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            Text("구의")
                                                .font(Font.custom("Apple SD Gothic Neo", size: 11))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            Spacer()
                                        }
                                        .padding(.leading, 24)
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 8, height: 8)
                                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            Text("강변")
                                                .font(Font.custom("Apple SD Gothic Neo", size: 11))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            Spacer()
                                        }
                                        .padding(.leading, 24)
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 8, height: 8)
                                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            Text("잠실나루")
                                                .font(Font.custom("Apple SD Gothic Neo", size: 11))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            Spacer()
                                        }
                                        .padding(.leading, 24)
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 8, height: 8)
                                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            Text("잠실")
                                                .font(Font.custom("Apple SD Gothic Neo", size: 11))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            Spacer()
                                        }
                                        .padding(.leading, 24)
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 8, height: 8)
                                                .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                            Text("잠실새내")
                                                .font(Font.custom("Apple SD Gothic Neo", size: 11))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                            Spacer()
                                        }
                                        .padding(.leading, 24)
                                    }
                                } // 상세보기 부분 끝
                            }
                        }
                        .padding(.bottom, 6)
                        HStack{
                            ZStack{
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color(red: 0, green: 0.66, blue: 0.3))
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .padding(.leading, 18)
                                Text("하차")
                                    .font(
                                        Font.custom("Apple SD Gothic Neo", size: 8)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding(.leading, 18)
                            }
                            Text("종합운동장역 하차")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 14)
                            Text("8번 출구")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            VStack{
                                Image(systemName: "figure.walk")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                                Image(systemName: "arrowtriangle.down.fill")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                    .foregroundColor(Color(red: 0.6, green: 0.46, blue: 0.46))
                            }
                            .padding(.leading, 22)
                            Text("걷기")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 18)
                            Text("도보 218m, 3분 소요")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 11)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                                .padding(.leading, 4)
                        }
                        HStack{
                            Image(systemName: "circle.circle.fill")
                                .resizable()
                                .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                                .frame(width: 24, height: 24)
                                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                                .padding(.leading, 16)
                            Text("종합운동장역 2호선 도착")
                                .font(
                                    Font.custom("Apple SD Gothic Neo", size: 13)
                                        .weight(.semibold)
                                )
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .padding(.leading, 11)
                        }
                    }
                }
            }
            .padding(.vertical, 16)
            .background {
                Rectangle()
                    .foregroundColor(.clear)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
            }
            .padding(20)
            Spacer()
        }
    }
}
struct Finding_Previews: PreviewProvider {
    static var previews: some View {
        Finding()
    }
}
    
