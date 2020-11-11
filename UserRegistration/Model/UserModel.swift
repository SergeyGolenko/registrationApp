//
//  UserModel.swift
//  UserRegistration
//
//  Created by Сергей Голенко on 09.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import Foundation


class User{
    var login: String
    var email: String
    
    init(login:String,email:String) {
        self.login = login
        self.email = email
    }
}
