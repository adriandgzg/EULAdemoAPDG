//
//  RequestMovement.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire


class RequestMovements: RequestProtocol {
 
    var token = ""
    init(tok:String){
        self.token = tok
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
           
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? ""]
           
           return params
       }
       
       func getUrl() -> String {
        return stockURL.getMovements
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
