//
//  RequestSearch.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//
import Alamofire
import UIKit

class RequestSearch: RequestProtocol {
    var search = ""
    
    
    init(searchString:String){
        search = searchString
    }
    func getQueryParams() -> Parameters? {
        return ["s":search]
    }
    
    func getParameters() -> Parameters? {
        return nil
    }
    
    func getUrl() -> String {
        return stockURL.search
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
