//
//  RequestGetNivel2Iden.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestGetNivel2Iden: RequestProtocol {
    var token = ""
    var FileIdentiFront = ""
    var FileIdentiRear = ""
    var OpcIdent = ""
    var Comprobante = ""
    
    init(token:String, FileIdentiFront:String,FileIdentiRear:String, OpcIdent:String,Comprobante:String){
        self.token = token
        self.FileIdentiFront = FileIdentiFront
        self.FileIdentiRear = FileIdentiRear
        self.OpcIdent = OpcIdent
        self.Comprobante = Comprobante
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     
     @POST("/appservices/GetNivel2Iden")
     @FormUrlEncoded
     Call<GeneralResponse> postIdentify(@Field("Token") String token,
                                        @Field("UsrId") String usrId,
                                        @Field("IdDevice") String IdDevice,
                                        @Field("FileIdentiFront") String fileFront,
                                        @Field("FileIdentiRear") String fileBack,
                                        @Field("OpcIdent") Integer idDoc,
                                        @Field("Comprobante") String comprobante);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId":   UserKLU.shared.userData?.idUser ?? "",
                         "FileIdentiFront":   self.FileIdentiFront,
                         "FileIdentiRear":self.FileIdentiRear,
                         "OpcIdent":   self.OpcIdent,
                         "Comprobante":self.Comprobante
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNivel2Iden
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
