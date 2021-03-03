import Foundation
import Alamofire
class RequestSetPhoneNumberApp: RequestProtocol {
 
    var token = ""
    var NumberPhone = ""
    var Lada = ""
    init(token:String, numberphone:String, lada:String){
        self.token = token
        self.NumberPhone = numberphone
        self.Lada = lada
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*

     
     @POST("/appservices/SetPhoneNumberApp")
         @FormUrlEncoded
         Call<GeneralResponse> setPhoneNumberApp(@Field("Token") String token,
                                             @Field("UserID") String usrId,
                                             @Field("IdDevice") String IdDevice,
                                             @Field("NumberPhone") String numberPhone,
                                             @Field("Lada") String lada);
     

     */
       func getParameters() -> Parameters? {
    
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "UserId": UserKLU.shared.userData?.idUser ?? "",
                         "NumberPhone":self.NumberPhone,
                         "Lada":self.Lada]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.SetPhoneNumberApp
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
