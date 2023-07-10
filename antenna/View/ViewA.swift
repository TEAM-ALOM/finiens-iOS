//
//  ViewA.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/06.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        VStack(){
            HStack{
                Text("안테나")
                    .frame(width: 89, height: 41)
                    .fontWeight(.bold)
                    .font(.system(size:34))
                    .foregroundColor(Color(red: 1, green: 0.53, blue: 0.53))
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 101)
            HStack(){
                Text("즐겨찾는 경로")
                    .frame(width: 93, height: 20)
                    .fontWeight(.bold)
                    .font(.system(size:17))
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                Spacer()
            }
            .padding(.leading, 26)
            .padding(.top, 51)
            Spacer()
            
        }
        Text("HELLO")
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
