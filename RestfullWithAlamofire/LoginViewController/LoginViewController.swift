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
        
        guard var email = userNameTextField.text,
            var password = passwordTextField.text else {
                self.promtErrorPopup()
                return
                
        }
        email = "eve.holt@reqres.in"
        password = "cityslicka"
        // Create login request:
        NetworkManager.request(APIRouter.login(email: email, password: password), LoginResponse.self,
                             completion: {(result, err) in
            guard err == nil else {
                print("False with code: \(err?.mErrorCode ?? 0) and message: \(err?.mErrorMessage ?? "Some error")")
                return
            }
        // Navigate to next screen if succcesed

            print("Fullname: " + (result?.user?.fullname)!)
        })
        
    }
    
    fileprivate func promtErrorPopup() {
    
    }
    
}
