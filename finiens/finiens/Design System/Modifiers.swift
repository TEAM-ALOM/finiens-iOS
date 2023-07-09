//
//  Modifiers.swift
//  finiens
//
//  Created by 김도형 on 7/9/23.
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

extension View {
    /**
     안테나 디자인 시스템 Shadow의 Medium 스케일
     */
    func mediumShadow() -> some View {
        modifier(MediumShadow())
    }
    
    /**
     안테나 디자인 시스템 Shadow의 Large 스케일
     주로 지도 위에 올라간 UI 컴포넌트들과 같이 구분감을 확실하게 주고 싶을때 사용합니다.
     */
    func largeShadow() -> some View {
        modifier(LargeShadow())
    }
}
