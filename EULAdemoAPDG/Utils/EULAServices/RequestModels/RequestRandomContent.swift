//
//  RequestRandomContent.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 03/03/21.
//

import Foundation
import Alamofire

class RequestRandomContent: RequestProtocol {
    
    
    init(){
    }
    
    func getQueryParams() -> Parameters? {
        return nil
    }
    
    func getParameters() -> Parameters? {
        return nil
    }
    
    func getUrl() -> String {
        return stockURL.random
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
