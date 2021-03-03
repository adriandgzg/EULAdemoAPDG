//
//  RequestDetailMeal.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import Foundation
import Alamofire


class RequestLookup: RequestProtocol {
    var idMeal = ""
    
    
    init(id:String){
        idMeal = id
    }
    func getQueryParams() -> Parameters? {
        return ["i":idMeal]
    }
    
    func getParameters() -> Parameters? {
        return nil
    }
    
    func getUrl() -> String {
        return stockURL.lookup
    }
    
    func getReplaceKeys() -> Parameters? {
        return nil
    }
    
    func getHeaders() -> [String : String]? {
        return nil
    }
    
    func getMethod() -> HTTPMethod {
        .get
    }
    

}
