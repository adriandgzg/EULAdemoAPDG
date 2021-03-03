//
//  RequestTransferOtherUsers.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire

class RequestTransferOtherUsers: RequestProtocol {
 
    var token = ""
    var TypeTransferConsumer = ""
    var ReciverInfo = ""
    var lada = ""
    var Amounth = ""
    var latUsr = ""
    var longUsr = ""
    /*
     Call<GeneralResponse> transferOtherUsers(@Field("Token") String token,
                                       @Field("UsrId") String usrId,
                                       @Field("IdDevice") String IdDevice,
                                       @Field("latUsr") String wsSelect,
                                       @Field("longUsr") String banco,
                                       @Field("TypeTransferConsumer") String alias,
                                       @Field("ReciverInfo") String beneficiario,
                                       @Field("Amounth") String cuenta,
                                       @Field("lada") String lada);
     */
    
    

    init(token:String, typeTransferConsumer:String,reciverInfo:String, amounth:String,lat:String,long:String, lada:String){
        self.token = token
        self.TypeTransferConsumer = typeTransferConsumer
        self.ReciverInfo = reciverInfo
        self.Amounth = amounth
        self.latUsr = lat
        self.longUsr = long
        self.lada = lada
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "TypeTransferConsumer" : self.TypeTransferConsumer,
                         "ReciverInfo":self.ReciverInfo,
                         "Amounth":self.Amounth,
                         "lada":self.lada,
                         "latUsr":self.latUsr,
                         "longUsr":self.longUsr]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.TransferOtherUsers
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

