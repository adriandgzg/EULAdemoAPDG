//
//  RequestGetContraseña.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetPassword: RequestProtocol {
 
    var token = ""
    var email = ""
    init(token:String, email: String){
        self.token = token
        self.email = email
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "email": self.email]
           
           return params
       }
       
       func getUrl() -> String {
        return stockURL.getContrasena
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
