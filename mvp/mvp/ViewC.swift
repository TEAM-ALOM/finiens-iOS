//
//  ViewC.swift
//  mvp
//
//  Created by 김휘선 on 2023/08/01.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        ZStack{
            Color.green
            Image(systemName: "line.3.horizontal")
                .foregroundColor(Color.white)
                .font(.system(size:100.0))
            
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}

