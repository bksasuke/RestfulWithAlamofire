//
//  LoginResponse.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation
import ObjectMapper

class User:Mappable {
    var id: Int?
    var roleId: Int?
    var fullname: String?
    var email: String?
    var dateOfBirth: String?
    var avatar: String?
    var status: String?
    var createdAt: String?
    var updatedAt: String?
    var phone: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        roleId <- map["role_id"]
        fullname <- map["fullname"]
        email <- map["email"]
        dateOfBirth <- map["dob"]
        avatar <- map["avatar"]
        status <- map["status"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        phone <- map["phone"]
    }
}

class LoginResponse: Mappable {
    var user: User?
    var auth: Auth?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        user <- map["user"]
        auth <- map["auth"]
    }
}
