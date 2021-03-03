//
//  Constants.swift
//  KLU
//
//  Created by grodriguez on 28/10/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import LocalAuthentication
import UIKit


class Constants {
    static let apiKey = "IikealXImq7d2BA93kkVPSEXe12CJ105+u917D03fAzTWD+x0Hw0yA7jRc4KLU2020#"
    static let url = "https://www.klu.mx/"
    static let path = "appservices/"
    static let firebase = "eiRsUYaoTVGo4dfPjVw_7S:APA91bGqMJlqd1FvNy7I4c1HWIlNLgXc2IQdUJJr97dEJ6XR_S2P99JRwaALVoONY1edECPxmqqYGjO3ZTlNkwY_9iblLQFyWjwZg3_UlJHkMxaOQO9z0d2e0Vndmn9QogGlTavn_W6Y"

    static func biometricType() -> BiometricType {
        let authContext = LAContext()
        if #available(iOS 11, *) {
            let _ = authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
            switch(authContext.biometryType) {
            case .none:
                return .none
            case .touchID:
                return .touch
            case .faceID:
                return .face
            }
        } else {
            return authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) ? .touch : .none
        }
    }

    enum BiometricType {
        case none
        case touch
        case face
    }

}



class ConstantString{
    static let errorgeneric = "Ocurrio un error, intente mas tarde"
    
    
}





let klu_background   = #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
let klu_blue         = #colorLiteral(red: 0, green: 0.2784313725, blue: 0.7294117647, alpha: 1)
let klu_orange       = #colorLiteral(red: 0.8823529412, green: 0.4078431373, blue: 0.1137254902, alpha: 1)
let klu_yellow       = #colorLiteral(red: 0.9921568627, green: 0.7725490196, blue: 0, alpha: 1)
let klu_text_color   = #colorLiteral(red: 0.9921568627, green: 0.9490196078, blue: 0.8666666667, alpha: 1)
let klu_background_fragment = #colorLiteral(red: 0.9921568627, green: 0.9490196078, blue: 0.8666666667, alpha: 1)
let klu_background_edit_text = #colorLiteral(red: 0.9921568627, green: 0.9764705882, blue: 0.9568627451, alpha: 1)
    /*
     
     <color name="klu_background">#262626</color>
     <color name="klu_blue">#0047BA</color>
     <color name="klu_orange">#E1681D</color>
     <color name="klu_yellow">#FDC500</color>
     <color name="klu_text_color">#FDF2DD</color>
     <color name="klu_background_fragment">#FDF2DD</color>
     <color name="klu_background_edit_text">#FDF9F4</color>
     */

