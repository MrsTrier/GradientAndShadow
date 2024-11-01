//
//  GradientAndShadowViewController.swift
//  GradientAndShadow
//
//  Created by Daria Cheremina on 01/11/2024.
//

import UIKit

enum Constants: CGFloat {
    case indent = 100
    case squareSize = 150
}

class GradientAndShadowViewController: UIViewController {
    private let gradientAndShadowView = GradientAndShadowView(size: Constants.squareSize.rawValue, style: .basic)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }

    private func setupConstraints() {
        view.addSubview(gradientAndShadowView)

        gradientAndShadowView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            gradientAndShadowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientAndShadowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.indent.rawValue),
            gradientAndShadowView.widthAnchor.constraint(equalToConstant: Constants.squareSize.rawValue),
            gradientAndShadowView.heightAnchor.constraint(equalToConstant: Constants.squareSize.rawValue)
        ])
    }
}

