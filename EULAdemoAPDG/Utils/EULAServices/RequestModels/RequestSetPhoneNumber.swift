//  RequestGetBankAccounts.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestSetPhoneNumber: RequestProtocol {
 
    var token = ""
    var NumberPhone = ""
    var Lada = ""
    init(token:String, numberphone:String, lada:String){
        self.token = token
        self.NumberPhone = numberphone
        self.Lada = lada
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/SetPhoneNumber")
       @FormUrlEncoded
       Call<GeneralResponse> lvlTwoRequest(@Field("Token") String token,
                                            @Field("UserID") String usrId,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("NumberPhone") String numberPhone,
                                            @Field("Lada") String lada);
     
     

     */
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "NumberPhone":self.NumberPhone,
                         "Lada":self.Lada]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.SetPhoneNumber
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
