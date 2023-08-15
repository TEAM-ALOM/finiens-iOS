//
//  ButtonStyle.swift
//  Finiens
//
//  Created by 이소리 on 2023/08/15.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct ZoomButton: View {
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
