//
//  RequestPreTarjeta.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//


import Foundation
import Alamofire
class RequestPreTarjeta: RequestProtocol {
 
    var token = ""
    var identificador = ""
    var CP = ""
    var Estado = ""
    var Municipio = ""
    var Colonia = ""
    var Calle = ""
    var Interior = ""
    var Exterior = ""
    var Referencias = ""
    var Tel = ""
    
    init(token:String, identificador: String,cp:String,estado:String,municipio:String,colonia:String,calle:String,interior:String,exterior:String,referencia:String,tel:String){
        self.token = token
        self.identificador = identificador
        self.CP = cp
        self.Estado = estado
        self.Municipio = municipio
        self.Colonia = colonia
        self.Calle = calle
        self.Interior = interior
        self.Exterior = exterior
        self.Referencias = referencia
        self.Tel = tel

    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
 
        let params = ["Token": self.token,
                        "UsrId": UserKLU.shared.userData?.idUser ?? "",
                        "Identificador": self.identificador,
                        "IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                        "CP":   self.CP,
                        "Estado": self.Estado,
                        "Municipio": self.Municipio,
                        "Colonia":   self.Colonia,
                        "Calle": self.Calle,
                        "Interior": self.Interior,
                        "Exterior":   self.Exterior,
                        "Referencias": self.Referencias,
                         "Tel" : self.Tel]
           
           return params
       }
       
       func getUrl() -> String {
        return stockURL.getPreTrarjeta
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
