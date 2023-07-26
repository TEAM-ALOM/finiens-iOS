//
//  ContentView.swift
//  antenna_mvp
//
//  Created by 김휘선 on 2023/07/17.
//

import SwiftUI  // tab 부분에서 글자 폰트랑 크기 조절하기

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
        .accentColor(Color(red: 1, green: 0.53, blue: 0.53))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

