//
//  Colors.swift
//  finiens
//
//  Created by 김도형 on 7/9/23.
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

extension Color {
    /**
     안테나 디자인 시스템  Backgrounc Color
     */
    static public let backgroundColor = FiniensColor.backgroundColor.color
    
    /**
     안테나 디자인 시스템Shape Color
     */
    static public let shapeColor = FiniensColor.shapeColor.color
    
    /**
     안테나 디자인 시스템 Shape Color의 secondary 스케잃
     */
    static public let shapeSecondaryColor = FiniensColor.shapeColor.secondary
    
    /**
     안테나 디자인 시스템 Shape Color의 tertiary 스케잃
     */
    static public let shapeTertiaryColor = FiniensColor.shapeColor.tertiary
    
    /**
     안테나 디자인 시스템 Shape Color의 quaternary 스케잃
     */
    static public let shapeQuaternaryColor = FiniensColor.shapeColor.quaternary
    
    /**
     안테나 디자인 시스템 Key Color
     */
    static public let keyColor = FiniensColor.keyColor.color
    
    /**
     안테나 디자인 시스템 Key Color의 secondary 스케일
     */
    static public let keySecondaryColor = FiniensColor.keyColor.secondary
    
    /**
     안테나 디자인 시스템 Key Color의 tertiary 스케일
     */
    static public let keyTertiaryColor = FiniensColor.keyColor.tertiary
    
    /**
     안테나 디자인 시스템 Key Color의 quaternary 스케일
     */
    static public let keyQuaternaryColor = FiniensColor.keyColor.quaternary
    
    /**
     안테나 디자인 시스템 Text Color
     */
    static public let textColor = FiniensColor.textColor.color
    
    /**
     안테나 디자인 시스템 Text Color의 secondary 스케일
     */
    static public let textSecondaryColor = FiniensColor.textColor.secondary
    
    /**
     안테나 디자인 시스템 Text Color의 tertiary 스케일
     */
    static public let textTertiaryColor = FiniensColor.textColor.tertiary
    
    /**
     안테나 디자인 시스템 Text Color의 quaternary 스케일
     */
    static public let textQuaternaryColor = FiniensColor.textColor.quaternary
    
    /**
     안테나 디자인 시스템 Edit Color
     */
    static public let editColor = FiniensColor.editColor.color
    
    /**
     안테나 디자인 시스템 Alert Color
     */
    static public let alertColor = FiniensColor.alertColor.color
    
    /**
     안테나디자인 시스템 Public Transport Color
     */
    static public let publicTransportColor = FiniensColor.publicTransportColor.color
    
    /**
     안테나 디자인 시스템 On Foot Color
     */
    static public let onFootColor = FiniensColor.onFootColor.color
    
    /**
     안테나 디자인 시스템 Bookmark Color
     */
    static public let bookmarkColor = FiniensColor.bookmarkColor.color
}
