//
//  LocationListView.swift
//  Finiens
//
//  Created by 김휘선 on 2023/08/24.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack{
                        Image(systemName: "bus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 0.34, green: 0.33, blue: 0.86))
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .padding(.leading, 16)
                        Text("잠실나루역")
                            .font(
                            Font.custom("Apple SD Gothic Neo", size: 13)
                            .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        Text("24125")
                            .font(
                            Font.custom("Apple SD Gothic Neo", size: 11)
                            .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        Spacer()
                        Text("48분 소요")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 20)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                            .padding(.trailing, 14.5)

                    }
                    HStack{
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .foregroundColor(Color(red: 0.34, green: 0.33, blue: 0.86))
                            .frame(width: 8, height: 8)
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .padding(.leading, 22)
                        Text("일반")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 11)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.2, green: 0.8, blue: 0.6))
                        Text("16")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 11)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        Spacer()
                    }
                    HStack{
                        Text("지선")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 11)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.33, green: 0.7, blue: 0.2))
                            .padding(.leading, 38)
                        Text("3318")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 11)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "bus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 0.34, green: 0.33, blue: 0.86))
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .padding(.leading, 16)
                        Text("잠실역7번출구")
                            .font(
                            Font.custom("Apple SD Gothic Neo", size: 13)
                            .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        Text("24133")
                            .font(
                            Font.custom("Apple SD Gothic Neo", size: 11)
                            .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        Spacer()
                        Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                            .padding(.trailing, 16.5)
                    }
                    HStack{
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .foregroundColor(Color(red: 0.34, green: 0.33, blue: 0.86))
                            .frame(width: 8, height: 8)
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .padding(.leading, 22)
                        Text("지선")
                        .font(
                        Font.custom("Apple SD Gothic Neo", size: 11)
                        .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.33, green: 0.7, blue: 0.2))
                        Text("3216")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 11)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "circle.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                            .padding(.leading,16)
                        Text("세종대학교")
                            .font(
                                Font.custom("Apple SD Gothic Neo", size: 13)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        Spacer()
                    }
                    HStack(spacing:0){
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 48.15006, height: 15)
                                .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                            Image(systemName: "figure.walk")
                                .resizable()
                                .frame(width: 4.39913, height: 6.35253)
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 16.05002, height: 15)
                                .background(Color(red: 0.45, green: 0.5, blue: 0))
                            Text("7")
                                .font(.system(size:10))
                                .foregroundColor(.white)
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 256.80032, height: 15)
                                .background(Color(red: 0, green: 0.66, blue: 0.3))
                                .cornerRadius(5, corners: [.topRight, .bottomRight])
                                Text("2")
                                    .font(.system(size:10))
                                    .foregroundColor(.white)
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



extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}


struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
