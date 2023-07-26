//
//  TEST.swift
//  antenna_mvp
//
//  Created by 김휘선 on 2023/07/19.
//
import SwiftUI

struct DottedLine: View {
    var body: some View {
        Path { path in
                   path.move(to: CGPoint(x: 0, y: 0)) // 시작점
                   path.addLine(to: CGPoint(x: 0, y: 15)) // 끝점
               }
               .stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) // 점선 스타일
               .foregroundColor(Color(red: 0.36, green: 0.36, blue: 0.36)) // 점선 색상
    }
}

struct DottedLine_Previews: PreviewProvider {
    static var previews: some View {
        DottedLine()
    }
}





/*
 import SwiftUI

 struct Test: View {
     @State private var isExpanded = false

     var body: some View {
         VStack {
             if isExpanded {
                 ScrollView {
                     VStack {
                         ForEach(1...10, id: \.self) { index in
                             Text("리스트 아이템 \(index)")
                                 .padding()
                         }
                     }
                 }
                 .transition(.move(edge: .top))
                 .animation(.default)
             } else {
                 Spacer()
             }

             Button(action: {
                 withAnimation {
                     self.isExpanded.toggle()
                 }
             }, label: {
                 HStack {
                     Text("리스트를 보려면 누르세요")
                     Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                 }
                 .padding()
             })
         }
     }
 }

 struct Test_Previews: PreviewProvider {
     static var previews: some View {
         Test()
     }
 }



 */
