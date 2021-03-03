//
//  RequestPinConfirmation.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class PinConfirmationNumber: RequestProtocol {
 
    var token = ""
    var Pin = ""
    
    init(token:String, pin:String){
        self.token = token
        self.Pin = pin
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/PinConfirmPhoneNumber")
        @FormUrlEncoded
        Call<GeneralResponse> pinConfirmed(@Field("Token") String token,
                                            @Field("UserId") String usrId,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("Pin") String pin);

     */
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Pin":self.Pin
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.PinConfirmPhoneNumber
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




class PinConfirmationNumberAPP: RequestProtocol {
 
    var token = ""
    var Pin = ""
    
    init(token:String, pin:String){
        self.token = token
        self.Pin = pin
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/PinConfirmPhoneNumberApp")
      @FormUrlEncoded
      Call<GeneralResponse> pinConfirmedApp(@Field("Token") String token,
                                         @Field("UserId") String usrId,
                                         @Field("IdDevice") String IdDevice,
                                         @Field("Pin") String pin);

     */
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UserId": UserKLU.shared.userData?.idUser ?? "",
                         "Pin":self.Pin
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.PinConfirmPhoneNumberApp
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
