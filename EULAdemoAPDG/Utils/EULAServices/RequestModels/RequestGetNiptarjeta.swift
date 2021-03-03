//
//  RequestGetNiptarjeta.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetNipTarjeta: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetNipTarjeta")
        @FormUrlEncoded
        Call<Nip> getNip(@Field("Token") String token,
                         @Field("IdDevice") String IdDevice,
                         @Field("UsrId") String usrId);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId":   UserKLU.shared.userData?.idUser ?? ""
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNipTarjeta
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


class RequestGetStatusTarjeta: RequestProtocol {
    var token = ""
    
    init(token:String){
        self.token = token
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetStatusTarjeta")
       @FormUrlEncoded
       Call<StatusTarjeta> getStatusTarjeta(@Field("Token") String token,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("UsrId") String usrId);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId":   UserKLU.shared.userData?.idUser ?? ""
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetStatusTarjeta
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


class RequestGetABTarjeta: RequestProtocol {
    var token = ""
    var Opcion:Int = 0
    init(token:String, option:Int){
        self.token = token
        self.Opcion = option
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetABTarjeta")
     @FormUrlEncoded
     Call<GeneralResponse> blockCard(@Field("Token") String token,
                                          @Field("IdDevice") String IdDevice,
                                          @Field("UsrId") String usrId,
                                          @Field("Opcion") Integer opcion);
     */
       func getParameters() -> Parameters? {
           let params = [
                        "IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId":   UserKLU.shared.userData?.idUser ?? "",
                         "Opcion": self.Opcion
           ] as [String : Any]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetABTarjeta
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
