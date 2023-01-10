//
//  HomeVC.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import UIKit

class HomeVC: UIViewController, Storyboardable {

    @IBOutlet weak var homeLabel: UILabel!
    weak var coordinator: MainCoordinator?
    var homeViewModel: HomeViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen.withAlphaComponent(0.6)
        self.homeLabel.text = "Welcome \(homeViewModel?.userName ?? "**")"
        
    }
}
