//
//  ContentView.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ViewA()
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("홈")
                }
                ViewB()
                    .tabItem(){
                        Image(systemName: "map.fill")
                        Text("지도")
                    }
                ViewC()
                    .tabItem(){
                        Image(systemName: "line.3.horizontal")
                        Text("메뉴")
                    }
        }
        
        /*VStack(){
            
            HStack{
                Text("안테나")
                    .frame(width: 94, height: 41)
                    .fontWeight(.semibold)
                    .font(.system(size:34))
                    .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
                Spacer()
            }
            .padding(.leading, 26)
            .padding(.top, 93)
            HStack(){
                Text("즐겨찾는 경로") //26,156
                    .frame(width: 98, height: 21)
                    .fontWeight(.bold)
                    .font(.system(size:17))
                    .foregroundColor(Color(red: 63/255, green: 63/255, blue: 63/255))
                Spacer()
            }
            .padding(.leading, 26)
            .padding(.top, 63)
            
            Spacer()
            
        }*/
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


