//
//  ViewController.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import UIKit

class LoginVC: UIViewController, Storyboardable {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    var loginViewModel: LoginViewModel?
    var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = ""
      
        bindViewModel()
    }
    
    func bindViewModel() {
        
        // status text
        loginViewModel?.statusText.bind({ statusText in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
        
        // status color
        loginViewModel?.statusColor.bind({ statusColor in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        })
    }


    @IBAction func loginBtnAct(_ sender: UIButton) {
        loginViewModel?.loginButtonTapped(userName: nameTextField.text ?? "",
                                          password: passwordTextField.text ?? "")
        
        if let isLogged = loginViewModel?.isLoggendIn {
            if isLogged {
                mainCoordinator?.isLoggedIn = isLogged
                mainCoordinator?.showHome(userName: nameTextField.text ?? "empty")
            }
        }
    }
}

