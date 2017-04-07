//
//  users.swift
//  ProjectManager
//
//  Created by Stefan Francisco on 12/1/16.
//  Copyright © 2016 cmpe137. All rights reserved.
//

import Foundation

struct users {
    let key: Int
    let firstName: String
    let lastName: String
    let email: String
    let userName: String
    let passWord: String
    
    
    init(firstName: String, lastName: String, email: String, userName: String, passWord: String, key: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.userName = userName
        self.passWord = passWord
        self.key = key
    }
    
    
    
}
		
