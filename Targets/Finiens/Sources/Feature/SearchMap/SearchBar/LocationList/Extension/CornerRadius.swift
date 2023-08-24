//
//  View+CornerRadius.swift
//  Finiens
//
//  Created by 김휘선 on 2023/08/25.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
