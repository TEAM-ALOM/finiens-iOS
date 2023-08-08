//
//  Modifiers.swift
//  antenna
//
//  Created by 김도형 on 7/12/23.
//

import SwiftUI

struct MediumShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5)
    }
}

struct LargeShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 5)
    }
}
