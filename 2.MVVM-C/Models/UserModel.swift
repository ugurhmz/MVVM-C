//
//  UserModel.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import Foundation

struct UserModel {
    let userName: String?
    let password: String?
    
    static var loginUser = [
        UserModel(userName: "ugurhmz", password: "123456")
    ]
}


