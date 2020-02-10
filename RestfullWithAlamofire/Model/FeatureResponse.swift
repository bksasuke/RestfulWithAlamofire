//
//  FeatureResponse.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/10/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation
import ObjectMapper

class BannerCategory: Mappable {
    var name: String?
    var apps: [String: String]?
    var type: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        apps <- map["apps"]
        type <- map["type"]
    }
}

class FeatureResponse: Mappable {
    var bannerCategory: BannerCategory?
    var categories: Auth?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        bannerCategory <- map["bannerCategory"]
        categories <- map["categories"]
    }
}
