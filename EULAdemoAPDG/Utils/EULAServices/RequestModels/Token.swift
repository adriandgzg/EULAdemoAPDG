//
//  CreateAccount.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 08/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import UIKit
import Alamofire

class TokenRequest: RequestProtocol {
 
    
    init(){
       
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
           
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "apiKey": Constants.apiKey]
           
           return params
       }
       
       func getUrl() -> String {
        return stockURL.token
       }
       
       func getReplaceKeys() -> Parameters? {
           return nil
       }
       
       func getHeaders() -> [String : String]? {
        return nil
       }
       
       func getMethod() -> HTTPMethod {
           return .post
       }
       
}


