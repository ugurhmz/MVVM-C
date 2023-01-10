//
//  MainCoordinator.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import UIKit


class MainCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    var isLoggedIn = false
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedIn {
            showHome(userName: UserModel.loginUser[0].userName ?? "-")
        } else {
            showLogin()
        }
    }
    
    func showHome(userName: String) {
        let homeVC = HomeVC.instantiate(name: .main)
        let homeViewModel = HomeViewModel()
        homeViewModel.userName = userName
        homeVC.coordinator = self
        homeVC.homeViewModel = homeViewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(homeVC, animated: true)
    }
    
    func showLogin() {
        let vc = LoginVC.instantiate(name: .main)
        vc.mainCoordinator = self
        vc.loginViewModel = LoginViewModel()
        vc.loginViewModel?.isLoggendIn = isLoggedIn
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
