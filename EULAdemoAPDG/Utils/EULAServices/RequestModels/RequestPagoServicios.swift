//
//  RequestPagoServicios.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequesPagoServicios: RequestProtocol {
    var token = ""
    var MovementType = ""
    var ReceiverInfo = ""
    var ReceiverInfo2 = ""
    var Amount = ""
    var IdServ = ""
    var Clabe = ""
    
    init(token:String, IdServ: String,MovementType: String,ReceiverInfo: String,ReceiverInfo2: String,Amount: String,Clabe: String){
        self.token = token
        self.IdServ = IdServ
        self.MovementType = MovementType
        self.ReceiverInfo  = ReceiverInfo
        self.ReceiverInfo2 = ReceiverInfo2
        self.Amount = Amount
        self.Clabe = Clabe
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/Pagoservicios")
       @FormUrlEncoded
       Call<GeneralResponse> payService(@Field("Token") String token,
                                        @Field("IdDevice") String IdDevice,
                                        @Field("MovementType") String movementType,
                                        @Field("ReceiverInfo") String receiverInfo,
                                        @Field("ReceiverInfo2") String receiverInfo2,
                                        @Field("Amount") String amoun,
                                        @Field("IdServ") String IdServ,
                                        @Field("IdUser") String IdUser,
                                        @Field("Clabe") String Clabe);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "IdServ":   self.IdServ,
                         "IdUser": UserKLU.shared.userData?.idUser  ?? "",
                         "MovementType":self.MovementType,
                         "ReceiverInfo":self.ReceiverInfo,
                         "ReceiverInfo2":self.ReceiverInfo2,
                         "Amount":self.Amount,
                         "Clabe":self.Clabe
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.Pagoservicios
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
