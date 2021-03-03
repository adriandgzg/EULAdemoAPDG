//
//  RequestServices.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 07/01/21.
//  Copyright © 2021 PICAZO. All rights reserved.
//
import Foundation
import Alamofire
class RequestGetServicios: RequestProtocol {
    var token = ""
    init(token:String){
        self.token = token
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.getServices
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
