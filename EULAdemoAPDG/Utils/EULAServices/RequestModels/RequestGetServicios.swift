
import Alamofire
class RequestGetDetServicios: RequestProtocol {
    var token = ""
    var IdServ = ""
    init(token:String, IdServ: String){
        self.token = token
        self.IdServ = IdServ
    }
    func getQueryParams() -> Parameters? {
           return nil
       }
       /*
     @POST("/appservices/GetDetServicios")
        @FormUrlEncoded
        Call<DetailService> getDetailService(@Field("Token") String token,
                                             @Field("IdDevice") String IdDevice,
                                             @Field("IdServ") String IdServ);
     */
       func getParameters() -> Parameters? {
           let params = ["IdDevice": UIDevice.current.identifierForVendor!.uuidString,
                         "Token":   self.token,
                         "IdServ":   self.IdServ,
                         "versionApp" : "3.1"
                         ]
      
           return params
       }
       
       func getUrl() -> String {
        return stockURL.GetDetServicios
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
