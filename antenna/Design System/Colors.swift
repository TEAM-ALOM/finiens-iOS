//
//  Colors.swift
//  antenna
//
//  Created by 김도형 on 7/12/23.
//

import SwiftUI

enum ColorPhase: String {
    case secondary = "secondary"
    case tertiary = "tertiary"
    case quaternary = "quaternary"
}

enum FiniensColor: String {
    case backgroundColor = "background-color"
    case shapeColor = "shape-color"
    case keyColor = "key-color"
    case textColor = "text-color"
    case editColor = "edit-color"
    case alertColor = "alert-color"
    case publicTransportColor = "public-transport-color"
    case onFootColor = "on-foot-color"
    case bookmarkColor = "bookmark-color"
    
    var color: Color {
        Color(self.rawValue)
    }
    
    var secondary: Color {
        convertColor(.secondary)
    }
    
    var tertiary: Color {
        convertColor(.tertiary)
    }
    
    var quaternary: Color {
        convertColor(.quaternary)
    }
    
    func convertColor(_ colorPhase: ColorPhase) -> Color {
        switch self {
        case .shapeColor:
            return Color("shape-\(colorPhase.rawValue)-color")
        case .keyColor:
            return Color("key-\(colorPhase.rawValue)-color")
        case .textColor:
            return Color("text-\(colorPhase.rawValue)-color")
        default:
            return Color(self.rawValue)
        }
    }
}
