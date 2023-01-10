//
//  CoordinatorProtocol.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import UIKit

protocol CoordinatorProtocol {
    var navigationController: UINavigationController { get set }
    func start()
}
