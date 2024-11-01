//
//  GradientAndShadowView.swift
//  GradientAndShadow
//
//  Created by Daria Cheremina on 01/11/2024.
//

import UIKit

final class GradientAndShadowView: UIView {
    private let size: CGFloat
    private let style: GradientStyle

    private lazy var gradientLayer: CAGradientLayer = {
        CAGradientLayer.gradientLayer(
            for: style,
            in: self.frame,
            cornerRadius: self.layer.cornerRadius
        )
    }()

    init(size: CGFloat, style: GradientStyle) {
        self.size = size
        self.style = style

        super.init(frame: .zero)

        self.setup()
        self.layer.addSublayer(gradientLayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        self.frame = CGRect(x: 0, y: 0, width: size, height: size)

        self.layer.cornerRadius = 0.188 * min(frame.width, frame.height)

        self.layer.shadowColor = CGColor(gray: 0, alpha: 0.5)
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 10
        self.layer.shadowPath = UIBezierPath(
            roundedRect: self.bounds,
            cornerRadius: self.layer.cornerRadius
        ).cgPath
    }
}
