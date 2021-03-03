import Foundation
import Alamofire
class RequestGetNivel3DB: RequestProtocol {
 
    var token = ""
    var Banco = ""
    var Clabe = ""
    var Alias = ""
    var Beneficiario = ""
    
    
    init(token:String,banco:String,clabe:String,alias:String,beneficiario:String){
        self.token = token
        self.Clabe = clabe
        self.Alias = alias
        self.Beneficiario = beneficiario
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     
     @POST("/appservices/GetNivel3DB")
        @FormUrlEncoded
        Call<GeneralResponse> postBankAccount(@Field("Token") String token,
                                           @Field("UsrId") String usrId,
                                           @Field("IdDevice") String IdDevice,
                                           @Field("Banco") Integer banco,
                                           @Field("Clabe") String clabe,
                                           @Field("Alias") String alias,
                                           @Field("Beneficiario") String beneficiario);

     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UsrId": UserKLU.shared.userData?.idUser ?? "",
                         "Banco":self.Banco,
                         "Clabe":self.Clabe,
                         "Alias":self.Alias,
                         "Beneficiario":self.Beneficiario
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetNivel3DB
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
