//
//  LoginViewController.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/12/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let networkManager = NetworkManager()
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    @IBAction func onLoginClick(_ sender: Any) {
        // Create login request:
//        NetworkManager.request(APIRouter.user, LoginResponse.self,
//                             completion: {(result, err) in
//            guard err == nil else {
//                print("False with code: \(err?.mErrorCode ?? 0) and message: \(err?.mErrorMessage ?? "Some error")")
//                return
//            }
//
//            print("Fullname: " + (result?.user?.fullname)!)
//        })
    }
    
}
