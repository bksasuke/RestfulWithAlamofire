//
//  Configs.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation

struct Production {
    static let BASE_URL: String = "http://api.letsbuildthatapp.com/appstore/"//"https://your_base_url.com/api/" // Thay thế bằng Base url mà bạn sử dụng ở đây
}

enum NetworkErrorType {
    case API_ERROR
    case HTTP_ERROR
}
