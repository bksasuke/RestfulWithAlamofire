//
//  Configs.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation

struct Production {
    static let BASE_URL: String = "https://reqres.in/api/"
    //"http://api.letsbuildthatapp.com/appstore/"
    //"https://reqres.in/api"
    //"https://reqres.in/api/users?page=1"; source: https://reqres.in/
    //"http://dummy.restapiexample.com/api/v1/employees"
}

enum NetworkErrorType {
    case API_ERROR
    case HTTP_ERROR
}
