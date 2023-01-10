//
//  LoginViewModel.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import Foundation
import UIKit

class LoginViewModel {
    
    var statusText = Binding("")
    var statusColor = Binding(UIColor.purple)
    var isLoggendIn = false
    
    func loginButtonTapped(userName: String, password: String ) {
        if userName != UserModel.loginUser[0].userName ||
            password != UserModel.loginUser[0].password {
            statusText.value = "Login failed"
            statusColor.value = UIColor.red
            isLoggendIn = false
            
        } else {
            statusText.value = "Success"
            statusColor.value = UIColor.green
            isLoggendIn = true
        }
    }
}
