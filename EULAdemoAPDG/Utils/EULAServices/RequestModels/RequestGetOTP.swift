//
//  RequestGetOTP.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetOTP: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetOTP")
      @FormUrlEncoded
      Call<Otp> getOTP(@Field("Token") String token,
                       @Field("IdDevice") String IdDevice,
                       @Field("UsrId") String usrId);


     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetOTP
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



class RequestGetContrato: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetContrato")
        @FormUrlEncoded
        Call<GeneralResponse> sendContrato(@Field("Token") String token,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("UsrId") String usrId);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetContrato
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


class RequestGetTiendasPaynet: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
   
     @POST("/appservices/GetTiendasPaynet")
     @FormUrlEncoded
     Call<Efectivo> getTiendasPaynet(@Field("Token") String token,
                                     @Field("IdDevice") String IdDevice);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token
                         //"UsrId": UserKLU.shared.userData?.idUser ?? "",
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetTiendasPaynet
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




class RequestGetSolicitaReemplazo: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetSolicitaReemplazo")
       @FormUrlEncoded
       Call<GeneralResponse> getSolicitaReemplazo(@Field("Token") String token,
                        @Field("IdDevice") String IdDevice,
                        @Field("UsrId") String usrId);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetSolicitaReemplazo
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

class RequestGetPreferences: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetPreferences")
     @FormUrlEncoded
     Call<Preferences> getPreferences(@Field("Token") String token,
                                      @Field("IdDevice") String IdDevice,
                                      @Field("UsrId") String usrId);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetPreferences
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
