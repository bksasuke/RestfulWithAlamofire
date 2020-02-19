//
//  AppModeController.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/19/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation

class AppModeController {
    static let shared = AppModeController()
    private init() {
        
    }
    
    var mode: AppSettingsAppMode = .Unregister
    
}
