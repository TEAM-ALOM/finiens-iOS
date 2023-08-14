//
//  MyButtonStyle.swift
//  antenna
//
//  Created by 김휘선 on 2023/07/06.
//

import SwiftUI


struct MyButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        
        configuration
            .label
            .font(.system(size:20))
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
        
    }
    
    
    
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action : {
                print("button clickded")
            }, label: {
                Text("버튼이 들어갈 자리")
            }
        ).buttonStyle(MyButtonStyle())
    }
}
