//
//  RequestGetDeposito.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//
import Foundation
import Alamofire
class RequestGetBitrusDeposito: RequestProtocol {
    var token = ""
    var otp = ""
    var ammoutn = ""
    init(token:String,otp:String,ammoutn:String){
        self.token = token
        self.otp = otp
        self.ammoutn = ammoutn
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetBitrusDeposito")
         @FormUrlEncoded
         Call<GeneralResponse> payBitrusService(@Field("Token") String token,
                                         @Field("IdDevice") String IdDevice,
                                         @Field("UsrId") String usrId,
                                         @Field("Otp") String otp,
                                         @Field("Amount") Float amount);


     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Otp" : self.otp,
                         "Amount" : self.ammoutn
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetBitrusDeposito
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
