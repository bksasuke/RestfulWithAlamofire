//
//  Auth.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation
import ObjectMapper

class Auth: Mappable {
    var tokenType: String?
    var expiresIn: Int?
    var accessToken: String?
    var refreshToken: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        tokenType <- map["token_type"]
        expiresIn <- map["expires_in"]
        accessToken <- map["access_token"]
        refreshToken <- map["refresh_token"]
    }
}
