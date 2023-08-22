//
//  ButtonStyle.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/15.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct CircleButton: View {
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: image)
                .font(Font.title.weight(.bold))
                .frame(width: 40, height: 40)
                .foregroundColor(Color(.red))
                .background(Color.white)
                .clipShape(Circle())
        }
    }
}

struct FrameStyle: ViewModifier {
    var width: CGFloat
    var height: CGFloat
    var backgroundColor: Color
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
    }
}

extension View {
    func frameStyle(width: CGFloat, height: CGFloat, backgroundColor: Color, cornerRadius: CGFloat) -> some View {
        self.modifier(FrameStyle(width: width, height: height, backgroundColor: backgroundColor, cornerRadius: cornerRadius))
    }
}
