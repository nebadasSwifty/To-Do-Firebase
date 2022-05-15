//
//  User.swift
//  To-Do-Firebase
//
//  Created by Кирилл on 14.05.2022.
//

import Foundation
import Firebase

struct Users {
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
