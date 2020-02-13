//
//  StartupViewController.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/13/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import UIKit

class StartupPageViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: UIViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray //AvThemeManager.default.color(for: AvThemeKeyName.AvLoadingBackgroundColor)
        self.navigationController?.navigationBar.barTintColor = UIColor.lightGray//AvThemeManager.default.color(for: AvThemeKeyName.AvLoadingBackgroundColor)
        self.activityIndicator.startAnimating()
    }
}
