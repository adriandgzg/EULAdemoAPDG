//
//  RequestGetRetiro.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire

class RequestGetRetiro: RequestProtocol {
 
    var token = ""
    var WSelect = ""
    var Banco = ""
    var Alias = ""
    var Beneficiario = ""
    var Cuenta = ""
    var Concepto = ""
    var Referencia = ""
    var Monto = ""
    var latUsr = ""
    var longUsr = ""
    
    
    
    /*
     @POST("/appservices/GetRetiro")
         @FormUrlEncoded
         Call<GeneralResponse> getRetiro(@Field("Token") String token,
                                            @Field("UsrId") String usrId,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("WSelect") String wsSelect,
                                            @Field("Banco") String banco,
                                            @Field("Alias") String alias,
                                            @Field("Beneficiario") String beneficiario,
                                            @Field("Cuenta") String cuenta,
                                            @Field("Concepto") String concepto,
                                            @Field("Referencia") String referencia,
                                            @Field("Monto") String monto,
                                            @Field("latUsr") String latitud,
                                            @Field("longUsr") String longitud);

     */
    init(token:String, wselect:String,banco:String, alias:String,beneficiario:String,cuenta:String,concepto:String,referencia:String,monto:String,lat:String,long:String){
        self.token = token
        self.WSelect = wselect
        self.Banco = banco
        self.Alias = alias
        self.Beneficiario = beneficiario
        self.Cuenta = cuenta
        self.Concepto = concepto
        self.Referencia = referencia
        self.Monto = monto
        self.latUsr = lat
        self.longUsr = long
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "WSelect" : self.WSelect,
                         "Banco" : self.Banco,
                         "Alias" : self.Alias,
                         "Beneficiario" : self.Beneficiario,
                         "Cuenta": self.Cuenta,
                         "Concepto":self.Concepto,
                         "Referencia":self.Referencia,
                         "Monto":self.Monto,
                         "latUsr":self.latUsr,
                         "longUsr":self.longUsr]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetRetiro
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

