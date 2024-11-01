//
//  CAGradientLayer+Extensions.swift
//  GradientAndShadow
//
//  Created by Daria Cheremina on 01/11/2024.
//

import UIKit

enum GradientStyle {
    case basic
    case fancy
}

extension CAGradientLayer {
    static func gradientLayer(for style: GradientStyle, in frame: CGRect, cornerRadius: CGFloat) -> Self {
        let layer = Self()
        layer.cornerRadius = cornerRadius
        layer.colors = colors(for: style)
        layer.frame = frame
        layer.startPoint = CGPoint(x: 0.0, y: 0.2)
        layer.endPoint = CGPoint(x: 1.0, y: 0.8)

        return layer
    }

    private static func colors(for style: GradientStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor

        switch style {
        case .basic:
            beginColor = UIColor.systemCyan
            endColor = UIColor.red
        case .fancy:
            beginColor = UIColor.magenta
            endColor = UIColor.systemMint
        }
        return [beginColor.cgColor, endColor.cgColor]
    }
}
