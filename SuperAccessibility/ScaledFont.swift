//
//  ScaledFont.swift
//  SuperAccessibility
//
//  Created by Regan Laurell on 2/28/21.
//

import SwiftUI

/// View Modifier to dynamically scale a custom font.
/// Needed to scale a custom font in SwiftUI while supporting iOS 13
/// source: https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-dynamic-type-with-a-custom-font
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    
    var font: String
    var size: CGFloat

    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(font, size: scaledSize))
    }
}

extension View {
    func scaledFont(font: String = "Cabin", size: CGFloat) -> some View {
        return self.modifier(ScaledFont(font: font, size: size))
    }
}
