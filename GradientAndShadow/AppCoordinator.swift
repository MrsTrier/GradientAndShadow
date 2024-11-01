//
//  AppCoordinator.swift
//  GradientAndShadow
//
//  Created by Daria Cheremina on 01/11/2024.
//

import UIKit

protocol AppCoordinatorProtocol: AnyObject {
    func start()
}

final class AppCoordinator: AppCoordinatorProtocol {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let gradientAndShadowVC = GradientAndShadowViewController()
        navigationController.pushViewController(gradientAndShadowVC, animated: false)
    }
}
