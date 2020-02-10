//
//  ViewController.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MGConnection.request(APIRouter.feature, LoginResponse.self,
                             completion: {(result, err) in
            guard err == nil else {
                print("False with code: \(err?.mErrorCode ?? 0) and message: \(err?.mErrorMessage ?? "Some error")")
                return
            }
                    
            print("Fullname: " + (result?.user?.fullname)!)
        })
        
    }


}

