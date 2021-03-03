//
//  Utils.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 03/03/21.
//

import Foundation
import  UIKit

extension UIView {
    
 
    func addBordersShadow()
    {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor   = MyVariables.shadowColor
        self.layer.shadowOpacity = Float(MyVariables.shadowOpacity)
        self.layer.shadowOffset  = MyVariables.shadowOffset
        self.layer.shadowRadius  =  CGFloat(MyVariables.shadowRadius)
    }
}


struct MyVariables {
    
    static var shadowColor = UIColor(named: "f9f9f9")?.cgColor
    static var clearColor = UIColor.clear.cgColor
    static var shadowOpacity = 0.18
    static var shadowOffset = CGSize(width: 0, height: 2)
    static var shadowOffsetMinus = CGSize(width: 0, height: -2)
    static var shadowRadius = 3
    
}
