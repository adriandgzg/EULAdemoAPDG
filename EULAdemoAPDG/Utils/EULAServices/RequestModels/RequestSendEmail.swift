//
//  RequestSendEmail.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//
import Foundation
import Alamofire
class RequestSendEmail: RequestProtocol {
    var token = ""
    var Subject = ""
    var Mensaje = ""
    init(token:String,Subject:String,Mensaje:String){
        self.token = token
        self.Subject = Subject
        self.Mensaje = Mensaje
        
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetSendEmail")
     @FormUrlEncoded
     Call<GeneralResponse> sendEmailHelp(@Field("Token") String token,
                                            @Field("IdDevice") String IdDevice,
                                            @Field("UsrId") String usrId,
                                            @Field("Subject") String subject,
                                            @Field("Mensaje") String mensaje);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Subject" : self.Subject,
                         "Mensaje" : self.Mensaje
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetSendEmail
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
