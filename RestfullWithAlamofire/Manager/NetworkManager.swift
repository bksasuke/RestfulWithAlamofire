//
//  NetWorkManager.swift
//  RestfullWithAlamofire
//
//  Created by TuanTQ16.local on 2/7/20.
//  Copyright © 2020 TuanTQ16.local. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class NetworkManager {
    
    static func isConnectedToInternet() ->Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
    static func request<T: Mappable>(_ apiRouter: APIRouter,_ returnType: T.Type, completion: @escaping (_ result: T?, _ error: BaseResponseError?) -> Void) {
        if !isConnectedToInternet() {
            // Xử lý khi lỗi kết nối internet
            return
        }
        
        Alamofire.request(apiRouter).responseObject {(response: DataResponse<BaseResponse<T>>) in
            switch response.result {
            case .success:
                let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.API_ERROR, (response.result.value?.code) ?? 0, (response.result.value?.message) ?? "error String")
                if response.response?.statusCode == 200 {
                    if (response.result.value?.isSuccessCode())! {
                        completion((response.result.value?.data)!, nil)
                    } else {
                        completion(nil, err)
                    }
                } else {
                    let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.HTTP_ERROR, (response.response?.statusCode)!, "Request is error!")
                    completion(nil, err)
                }
                break
                
            case .failure(let error):
                if error is AFError {
                    let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.HTTP_ERROR, error._code, "Request is error!")
                    completion(nil, err)
                }
                
                break
            }
        }
    }
}
