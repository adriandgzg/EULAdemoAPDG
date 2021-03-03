//
//  RequestGetLevelUp.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 11/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import Alamofire
class RequestCreateBankAccount: RequestProtocol {
    var token = ""
    var Banco = ""
    var AccountNumber = ""
    var Alias = ""
    var Beneficiario = ""
    
    init(token:String, banco:String,accountNumber:String, alias:String,beneficiario:String){
        self.token = token
        self.Banco = banco
        self.AccountNumber = accountNumber
        self.Alias = alias
        self.Beneficiario = beneficiario
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetCreateBankAccount")
       @FormUrlEncoded
       Call<GeneralResponse> createAccount(@Field("Token") String token,
                                             @Field("UsrId") String usrId,
                                             @Field("IdDevice") String IdDevice,
                                             @Field("Banco") Integer banco,
                                             @Field("AccountNumber") String accountNumber,
                                             @Field("Alias") String alias,
                                             @Field("Beneficiario") String beneficiario);



     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId":   UserKLU.shared.userData?.idUser ?? "",
                         "Banco":   self.Banco,
                         "AccountNumber":self.AccountNumber,
                         "Alias":   self.Alias,
                         "Beneficiario":self.Beneficiario
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetCreateBankAccount
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
