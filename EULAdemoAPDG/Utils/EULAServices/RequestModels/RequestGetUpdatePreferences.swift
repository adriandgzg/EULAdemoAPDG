//
//  RequestGetUpdatePreferences.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetUpdatePreferences: RequestProtocol {
    var token = ""
    var CEDeposito = ""
    var SMSDeposito = ""
    var CERetiro = ""
    var SMSRetriro = ""
    var CECompra = ""
    var SMSCompra = ""
    init(token:String,CEDeposito:String,SMSDeposito:String,CERetiro:String,SMSRetriro:String,CECompra:String,SMSCompra:String){
        self.token = token
        self.CEDeposito = CEDeposito
        self.SMSDeposito = SMSDeposito

        self.CERetiro = CERetiro
        self.SMSRetriro = SMSRetriro

        self.CECompra = CECompra
        self.SMSCompra = SMSCompra

    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetUpdatePreferences")
     @FormUrlEncoded
     Call<Preferences> getUpdatePreferences(@Field("Token") String token,
                                      @Field("IdDevice") String IdDevice,
                                      @Field("UsrId") String usrId,
                                      @Field("CEDeposito") String ceDeposito,
                                      @Field("SMSDeposito") String smsDeposito,
                                      @Field("CERetiro") String ceRetiro,
                                      @Field("SMSRetriro") String smsRetiro,
                                      @Field("CECompra") String ceCompra,
                                      @Field("SMSCompra") String smsCompra);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "CEDeposito" : self.CEDeposito,
                         "SMSDeposito" : self.SMSDeposito,
                         "CERetiro" : self.CERetiro,
                         "SMSRetriro" : self.SMSRetriro,
                         "CECompra" : self.CECompra,
                         "SMSCompra" : self.SMSCompra
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetUpdatePreferences
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
