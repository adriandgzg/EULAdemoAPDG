//
//  RequestGetNivel4.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetNivel4: RequestProtocol {
    var token = ""
    var Cuestionario = ""
    
    
    init(token:String, Cuestionario: String){
        self.token = token
        
        self.Cuestionario = Cuestionario
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetNivel4")
         @FormUrlEncoded
         Call<GeneralResponse> postCuestionario(@Field("Token") String token,
                                       @Field("UsrId") String usrId,
                                       @Field("IdDevice") String IdDevice,
                                       @Field("Cuestionario") String cuestionario);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Cuestionario" : self.Cuestionario
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNivel4
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
