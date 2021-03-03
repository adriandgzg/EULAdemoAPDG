//
//  UIView+Extension.swift
//  KLU
//
//  Created by grodriguez on 28/10/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addBorder(radius: Int) {
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    func showLoading(container: UIView) {
        self.addSubview(container)
        let imageData = try? Data(contentsOf: Bundle.main.url(forResource: "klu_app_2", withExtension: "gif")!)
        let advTimeGif = UIImage.gifImageWithData(imageData!)
        let imageView2 = UIImageView(image: advTimeGif)
        imageView2.frame = CGRect(x: ((self.frame.maxX/2) - 50), y: ((self.frame.maxY/2) - 50), width:100, height: 50)
        container.addSubview(imageView2)
    }
    
}




extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    

    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    func addTopBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.name = "topBorderLayer"
        removePreviouslyAddedLayer(name: border.name ?? "")
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y : 0,width: self.frame.size.width, height: width)
        self.layer.addSublayer(border)
    }
    
    func addRightBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.name = "rightBorderLayer"
        removePreviouslyAddedLayer(name: border.name ?? "")
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: self.frame.size.width - width, y: 0, width : width, height :self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.name = "bottomBorderLayer"
        removePreviouslyAddedLayer(name: border.name ?? "")
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width,width : self.frame.size.width,height: width)
        self.layer.addSublayer(border)
    }
    
    func addLeftBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.name = "leftBorderLayer"
        removePreviouslyAddedLayer(name: border.name ?? "")
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:0,width : width, height : self.frame.size.height)
        self.layer.addSublayer(border)
    }
    func removePreviouslyAddedLayer(name : String) {
        if self.layer.sublayers?.count ?? 0 > 0 {
            self.layer.sublayers?.forEach {
                if $0.name == name {
                    $0.removeFromSuperlayer()
                }
            }
        }
    }
    
    //MARK: - FUNCIONES OBSOLETAS
    public enum UIViewBorderSide {
        case top, bottom, left, right, all
    }
    
    func addBorder(_ side: UIViewBorderSide, borderWidth: Double, borderColor:UIColor) {
        
        let borderRect = CGRect(x: 0, y: 0, width: self.layer.frame.width, height: self.frame.height)
        
        switch side {
        case .top:
            addBorderUtility(x:0, y:0, width:borderRect.width, height:CGFloat(borderWidth), color:borderColor)
        case .bottom:
            addBorderUtility(x:borderRect.origin.x, y:borderRect.height - CGFloat(borderWidth), width:borderRect.width, height:CGFloat(borderWidth), color:borderColor)
        case .left:
            addBorderUtility(x:0, y:0, width:CGFloat(borderWidth), height:borderRect.height, color:borderColor);
        case .right:
            addBorderUtility(x:borderRect.width - CGFloat(borderWidth), y:0, width:CGFloat(borderWidth), height:borderRect.height, color:borderColor)
        case .all:
            addBorder(.top, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.bottom, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.left, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.right, borderWidth: borderWidth, borderColor: borderColor)
        }
        
    }
    
    func addBorder2(_ side: UIViewBorderSide, borderWidth: Double, borderColor:UIColor) {
        
        let borderRect = CGRect(x: 0, y: 0, width: self.layer.frame.width, height: self.frame.height)
        
        switch side {
        case .top:
            addBorderUtility(x:0, y:0, width:borderRect.width, height:CGFloat(borderWidth), color:borderColor)
        case .bottom:
            addBorderUtility(x:borderRect.origin.x, y:borderRect.height - CGFloat(borderWidth), width:borderRect.width, height:CGFloat(borderWidth), color:borderColor)
        case .left:
            addBorderUtility(x:0, y:0, width:CGFloat(borderWidth), height:borderRect.height, color:borderColor);
        case .right:
            addBorderUtility(x:borderRect.width - CGFloat(borderWidth), y:0, width:CGFloat(borderWidth), height:borderRect.height, color:borderColor)
        case .all:
            addBorder(.top, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.bottom, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.left, borderWidth: borderWidth, borderColor: borderColor)
            addBorder(.right, borderWidth: borderWidth, borderColor: borderColor)
        }
        
    }

    func addTopBorder(borderRect:CGRect, borderWidth:CGFloat, borderColor:UIColor) {
        addBorderUtility(x:0, y:0, width:borderRect.width, height:borderWidth, color:borderColor);
    }
    
    func addBottomBorder(borderRect:CGRect, borderWidth:CGFloat, borderColor:UIColor) {
        addBorderUtility(x:borderRect.origin.x, y:borderRect.height - borderWidth, width:borderRect.width, height:borderWidth, color:borderColor);
    }
    
    func addLeftBorder(borderRect:CGRect, borderWidth:CGFloat, borderColor:UIColor) {
        addBorderUtility(x:0, y:0, width:borderWidth, height:borderRect.height, color:borderColor);
    }
    
    func addRightBorder(borderRect:CGRect, borderWidth:CGFloat, borderColor:UIColor) {
        addBorderUtility(x:borderRect.width - borderWidth, y:0, width:borderWidth, height:borderRect.height, color:borderColor);
    }
    
    func addBorder(borderRect:CGRect, borderWidth:CGFloat, borderColor:UIColor) {
        //Top
        addBorderUtility(x:0, y:0, width:borderRect.width, height:borderWidth, color:borderColor);
        
        //Bottom
        addBorderUtility(x:0, y:borderRect.height - borderWidth, width:borderRect.width, height:borderWidth, color:borderColor);
        
        //Left
        addBorderUtility(x:0, y:0, width:borderWidth, height:borderRect.height, color:borderColor);
        
        //Right
        addBorderUtility(x:borderRect.width - borderWidth, y:0, width:borderWidth, height:borderRect.height, color:borderColor);
    }
    
  
    func limpiar(){
        
        for view in self.subviews {
            if(view.tag==123){
                
                UIView.animate(withDuration: 0.1, animations: {
                    // any changes entered in this block will be animated
                    view.alpha = 0;
                    }, completion: { finished in
                        // any code entered here will be applied
                        // once the animation has completed
                        view.removeFromSuperview()
                })
            }
        }
        
        for view in self.layer.sublayers! {
            if(view.name == "BordeAuxiliar"){
                view.removeFromSuperlayer()
            }
        }
    }
    
    fileprivate func addBorderUtility(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat, color:UIColor) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: x, y: y, width: width, height: height)
        border.name = "BordeGeneral"
        self.layer.addSublayer(border)
    }
    
    func addBorderUtilityAuxiliar(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat, color:UIColor) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: x, y: y, width: width, height: height)
        border.name = "BordeAuxiliar"
        self.layer.addSublayer(border)
    }
    
    class func loadFromNibNamed(_ nibNamed: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    
    /// Hacer imagen redondeada
    func doCircle()
    {
        self.layer.borderWidth = 0
        self.layer.masksToBounds = false
//        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
    
    ///Add a custom button to an accessory view
    func addSingleButton(buttonText:String!)
    {
        let label:UILabel = UILabel(frame:CGRect(x: 0, y: 0, width: 100, height: 30))
        label.frame.size.height = 30
        label.text = buttonText
        label.sizeToFit()
        
        let frame:CGRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: label.frame.size.height)
        let view:UIView = UIView(frame: frame)
        view.backgroundColor = UIColor.gray
        
        let button:UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: label.frame.size.width, height: label.frame.size.height))
        button.titleLabel?.text = label.text
        view.addSubview(button)
        self.addSubview(view)
    }
    
    func addBordersToView()
    {
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        self.layer.borderWidth = 1.0
    }
    func addBordersShadow()
    {
        
        self.layer.masksToBounds = false
        if #available(iOS 11.0, *) {
            self.layer.shadowColor   = MyVariables.shadowColor
        } else {
            // Fallback on earlier versions
        }
        self.layer.shadowOpacity = Float(MyVariables.shadowOpacity)
        self.layer.shadowOffset  = MyVariables.shadowOffset
        self.layer.shadowRadius  =  CGFloat(MyVariables.shadowRadius)
    }
    
    
}


struct MyVariables {
    
    @available(iOS 11.0, *)
    static var shadowColor = UIColor(named: "f9f9f9")?.cgColor
    static var clearColor = UIColor.clear.cgColor
    static var shadowOpacity = 0.20
    static var shadowOffset = CGSize(width: 0, height: 2)
    static var shadowOffsetMinus = CGSize(width: 0, height: -2)
    static var shadowRadius = 3
    
}
