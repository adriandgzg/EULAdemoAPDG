//
//  RequestGetPerfil.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetPerfil: RequestProtocol {
    var token = ""
    init(token:String){
        self.token = token
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetPerfil")
        @FormUrlEncoded
        Call<Perfil> getPerfil(@Field("Token") String token,
                               @Field("UsrId") String usrId,
                               @Field("IdDevice") String IdDevice);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? ""
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetPerfil
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
