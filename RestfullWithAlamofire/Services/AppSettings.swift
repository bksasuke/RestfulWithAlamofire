//
//  AppSettings.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/19/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation

enum AppSettingsAppMode: String {
    case LoggedUser = "loggedUser"
    case Unregister = "Unregister"
}

let kAppSettingsAppMode = "application_mode"

class AppSettings: NSObject {
    
    static let defaultSetting: [String: Any] = [kAppSettingsAppMode: "\(AppSettingsAppMode.Unregister)"
    ]
    /**
     Retrieves the setting object associated with the key in the app settings.
     - Parameter param: key The key to the setting object.
     - Returns: The setting object if present, or nil otherwise.
     */
    class func settingForKey(_ key: String) -> Any? {
        let userDefaults = UserDefaults.standard
        return userDefaults.object(forKey: key) as Any?
    }
    
    /**
     Retrieves the setting URL associated with the key in the app settings.
     - Parameter param: key The key to the setting URL object.
     - Returns: The setting URL object if present, or nil otherwise.
     */
    class func settingURLForKey(_ key: String) -> URL? {
        let userDefaults = UserDefaults.standard
        return userDefaults.url(forKey: key)
    }
    
    /**
     Sets the setting of the specified key in the app settings. If nil is passed, the setting for the key, if present, will be removed.
     - Parameter setting: Object to store.
     - Parameter key: The key to the setting object.
     */
    class func setSetting(_ setting: Any?, forKey key: String) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(setting, forKey: key)
    }
}
