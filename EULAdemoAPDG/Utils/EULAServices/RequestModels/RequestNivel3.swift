//
//  RequestNivel3.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetNivel3RFC: RequestProtocol {
    var token = ""
    var Rfc = ""
    var Declaracion = ""
    
    init(token:String, rfc: String, declaracion:String){
        self.token = token
        self.Rfc = rfc
        self.Declaracion = declaracion
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetNivel3RFC")
        @FormUrlEncoded
        Call<GeneralResponse> postRFC(@Field("Token") String token,
                                              @Field("UsrId") String usrId,
                                              @Field("IdDevice") String IdDevice,
                                              @Field("Rfc") String rfc,
                                              @Field("Declaracion") String declaracion);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Rfc" : self.Rfc,
                         "Declaracion": self.Declaracion
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNivel3RFC
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
