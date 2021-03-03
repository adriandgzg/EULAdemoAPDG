//
//  RequesPRotocol.swift
//  SACM
//
//  Created by Adrian Dominguez Gómez on 04/12/19.
//  Copyright © 2019 Adrián Pascual Domínguez. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

public protocol  RequestProtocol {
    
      func getQueryParams() -> Parameters?
      func getParameters()->Parameters? //validar para que tambien reciba un json
      func getUrl() -> String
      func getReplaceKeys()->Parameters?
      func getHeaders()-> [String:String]?
      func getMethod() -> HTTPMethod
}

