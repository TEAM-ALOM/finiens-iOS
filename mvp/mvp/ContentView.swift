//
//  ContentView.swift
//  mvp
//
//  Created by 김휘선 on 2023/08/01.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ViewA() //figma에 올라와있는 에러페이지 확인은 Errorpage
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
// 버튼을 누르면 직사각형 크기 확장 완료
// 스크롤 뷰에 넣음으로써 직사각형을 아래로 커지게끔 구현을 했는데, 이때 배치가 피그마와 좀 달라져서 이런 부분을 어떻게 수정해야할지

// 폰트 부분 수정하기
