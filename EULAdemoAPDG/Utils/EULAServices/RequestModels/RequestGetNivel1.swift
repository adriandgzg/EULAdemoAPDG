//
//  GetNivel1.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
/*
@POST("/appservices/GetNivel1")
   @FormUrlEncoded
   Call<GeneralResponse> lvlOneRequest(@Field("Token") String token,
                                       @Field("UsrId") String usrId,
                                       @Field("IdDevice") String IdDevice,
                                       @Field("Pnombre") String pNombre,
                                       @Field("Snombre") String sNombre,
                                       @Field("App") String app,
                                       @Field("Apm") String apm,
                                       @Field("Fnacimiento") String fNacimiento,
                                       @Field("PaisN") String paisN,
                                       @Field("PaisR") String paisR,
                                       @Field("EntidadFR") String enditadFr,
                                       @Field("Genero") Integer genero,
                                       @Field("Ocupacion") String ocupacion,
                                       @Field("Curp") String curp,
                                       @Field("ClaveE") String claveE,
                                       @Field("PersonaP") String personaP,
                                       @Field("Terminos") String terminos,
                                       @Field("Edad") String edad,
                                       @Field("CuentaP") String cuentaP);
*/

class RequestGetNivel1: RequestProtocol {
 
    var token = ""
    var Pnombre = ""
    var Snombre = ""
    var App = ""
    var Apm = ""
    var Fnacimiento = ""
    var PaisN = ""
    var PaisR = ""
    var EntidadFR = ""
    var Genero = ""
    var Ocupacion = ""
    var Curp = ""
    var ClaveE = ""
    var PersonaP = ""
    var Terminos = ""
    var Edad = ""
    var CuentaP = ""
    
    
    
    
    init(token:String,Pnombre:String,Snombre:String,App:String,Apm:String,Fnacimiento:String,PaisN:String,PaisR :String,EntidadFR:String, Genero :String,Ocupacion :String,Curp:String,ClaveE :String,PersonaP :String,Terminos :String,Edad :String,CuentaP :String){
        
        self.token = token
        self.Pnombre = Pnombre
        self.Snombre = Snombre
        self.App = Snombre
        self.Apm = Snombre
        self.Fnacimiento = Fnacimiento
        self.PaisN = PaisN
        self.PaisR = PaisR
        self.EntidadFR = EntidadFR
        self.Genero = Genero
        self.Ocupacion  = Ocupacion
        self.Curp  = Curp
        self.ClaveE  = ClaveE
        self.PersonaP = PersonaP
        self.Terminos = Terminos
        self.Edad  = Edad
        self.CuentaP = CuentaP
        
    }
    
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Pnombre":self.Pnombre,
                         "Snombre":self.Snombre,
                         "App":self.App,
                         "Apm":self.Apm,
                         "Fnacimiento":self.Fnacimiento,
                         "PaisN":self.PaisN,
                         "PaisR":self.PaisR,
                         "EntidadFR":self.EntidadFR,
                         "Genero":self.Genero,
                         "Ocupacion":self.Ocupacion,
                         "Curp":self.Curp,
                         "ClaveE":self.ClaveE,
                         "PersonaP":self.PersonaP,
                         "Terminos":self.Terminos,
                         "Edad":self.Edad,
                         "CuentaP":self.CuentaP]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNivel1
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

