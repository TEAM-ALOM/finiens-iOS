//
//  ViewB.swift
//  mvp
//
//  Created by 김휘선 on 2023/08/01.
//
import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack{
            Color.blue
            Image(systemName: "map.fill")
                .foregroundColor(Color.white)
                .font(.system(size:100.0))
            
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
