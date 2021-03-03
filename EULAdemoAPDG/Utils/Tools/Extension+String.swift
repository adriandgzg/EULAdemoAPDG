//
//  Extension+String.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 06/01/21.
//  Copyright © 2021 PICAZO. All rights reserved.
//

import Foundation
extension String{
    func regex(_ pattern : String, text: String) -> Bool {
        
        do {

            let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
            let matches = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            
            if ((matches.first) != nil) {
                return true
            }
        } catch {
            return false
        }

        
        return false
    }
    
    func truncar(_ length: Int) -> String {
        
        if self.count > length {
            return self.substring(to: self.index(self.startIndex, offsetBy: length))
        } else {
            return self
        }
    }
    
    
    func espacioTelefono(_ text:String) -> String {
        
        let newString =  text.trimmingCharacters(in: CharacterSet.whitespaces)
        
        if (text.count == 8)
        {
            let strEspacio:NSMutableString! = NSMutableString(string: newString)
            strEspacio.insert(" ", at: 8)
            return strEspacio as String
        }
        
        if (text.count == 9)
        {
            
            let lastChar = text[text.index(before: text.endIndex)]
            let strChar = "\(lastChar)"
            
            if (Int(strChar) != nil)
            {
                let strEspacio:NSMutableString! = NSMutableString(string: text)
                strEspacio.insert(" ", at: 8)
                return strEspacio as String
            }
            
            let strEspacio:NSMutableString! = NSMutableString(string: newString)
            strEspacio.insert("", at: 8)
            return strEspacio as String
        }
        
        if(text.count >= 13)
        {
            return text.truncar(13)
        }
        
        return text
        
    }
    
    
    func espacioTelefonoCelular(_ text:String) -> String {
        
        let newString =  text.trimmingCharacters(in: CharacterSet.whitespaces)
        
        if (text.count == 7)
        {
            let strEspacio:NSMutableString! = NSMutableString(string: newString)
            strEspacio.insert(" ", at: 7)
            return strEspacio as String
        }
        
        if (text.count == 8)
        {
            
            let lastChar = text[text.index(before: text.endIndex)]
            let strChar = "\(lastChar)"
            
            if (Int(strChar) != nil)
            {
                let strEspacio:NSMutableString! = NSMutableString(string: text)
                strEspacio.insert(" ", at: 7)
                return strEspacio as String
            }
            
            let strEspacio:NSMutableString! = NSMutableString(string: newString)
            strEspacio.insert("", at: 7)
            return strEspacio as String
        }
        
        if(text.count >= 12)
        {
            return text.truncar(12)
        }
        
        return text
        
    }
    
    func removeDigits(_ text:String) -> String {
        
        let newString = text.components(separatedBy: CharacterSet.decimalDigits)
        
        let result = newString.joined(separator: "")
        
        return result
        
    }
    
    func removeSpecialcCharacters(_ text:String) -> String {
        
        if text.count > 1
        {
            return truncar(text.count-1)
        }
        else
        {
            return ""
        }
    }

    func onlyDigits() -> String {
        let okayChars : Set<Character> = Set("1234567890() ")
        return String(self.filter {okayChars.contains($0) })
    }
    
    mutating func justNumeric() {
        let okayChars : Set<Character> = Set("1234567890")
        self = String(self.filter {okayChars.contains($0) })
    }
    
    func thisDigits(_ text:String, pattern:String) -> String {
        let okayChars : Set<Character> = Set(pattern)
        return String(text.filter {okayChars.contains($0) })
    }
    
    ///Add commas to a number string
    mutating func addMoneyFormat()
    {
        var currString:String! = self
        
        guard let numToDouble:Double = Double(currString) else {
            
            currString = currString.trimmingCharacters(in: NSCharacterSet(charactersIn: "0123456789.").inverted)
            if currString == "" {return}
           // Crashlytics.crashlytics().log("\(currString)")
            let numToDouble:Double = Double(currString)!
            let numberFormater = NumberFormatter()
            numberFormater.numberStyle = .currency
            numberFormater.locale =  Locale(identifier: "es_MX")
            
            if numberFormater.string(from: NSNumber(value: numToDouble)) == "0"
            {
                self = "0.00"
            }
            else
            {
                self = "\(numberFormater.string(from: NSNumber(value: numToDouble))!)";
            }
            
            return
        }
        
        let numberFormater = NumberFormatter()
        numberFormater.numberStyle = .currency
        numberFormater.locale =  Locale(identifier: "es_MX")
        
        if numberFormater.string(from: NSNumber(value: numToDouble)) == "0"
        {
            self = "0.00"
        }
        else
        {
            self = "\(numberFormater.string(from: NSNumber(value: numToDouble))!)";
        }
    }
    
    ///Add credit card format to uilabelview text
    mutating func addCreditCardFormat()
    {
        let a = self
        
        if !a.isEmpty && a.count >= 4 {
            let lastFourChars = a.substring(from:a.index(a.endIndex, offsetBy: -4))
            self = "XXXX XXXX XXXX \(lastFourChars)"
        }
        
    }
    
    mutating func currencyInputFormatting(_ space:Bool = true) -> String {
        
        if self == "" {
            return ""
        }else{
            var number: NSNumber!
            let formatter = NumberFormatter()
            formatter.numberStyle = .currencyAccounting
            if(space == true){
                formatter.currencySymbol = "$ "
            }else{
                formatter.currencySymbol = "$"
            }
            formatter.maximumFractionDigits = 2
            formatter.minimumFractionDigits = 2
            
            var amountWithPrefix = self
            
            let centavosRepresentation : Bool =  amountWithPrefix.contains(".") ? true : false
            if(!centavosRepresentation){
                amountWithPrefix = amountWithPrefix + ".00"
            }
                
            
            // remove from String: "$", ".", ","
            let regex = try! NSRegularExpression(pattern: "[^0-9.]", options: .caseInsensitive)
            amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count), withTemplate: "")
            
            let double = (amountWithPrefix as NSString).doubleValue
            number = NSNumber(value: double)
            
            // if first number is 0 or all numbers were deleted
            guard number != 0 as NSNumber else {
                return formatter.string(from: 0 as NSNumber)!
            }
            
            return formatter.string(from: number)!
        }
    }

}

extension String {
    /// Verifica si el string proporcionado contiene emoticones, si es así regresa false, de lo contrario regresa true
    var notEmoticon: Bool {
        
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x1F600...0x1F64F, // Emoticons
            0x1F300...0x1F5FF, // Misc Symbols and Pictographs
            0x1F680...0x1F6FF, // Transport and Map
            0x2600...0x26FF,   // Misc symbols
            0x2700...0x27BF,   // Dingbats
            0xFE00...0xFE0F,   // Variation Selectors
            0x1F900...0x1F9FF:  // Supplemental Symbols and Pictographs
                return false
            default:
                continue
            }
        }
        return true
        //return !isEmpty && range(of: "^[a-zA-Z0-9]$", options: .regularExpression) == nil
    }
    
    var notEmoticonInMail: Bool {
        
        if regex("[A-Z0-9a-zñÑ._%+-@]+$", text: self) == false
        {
            return false
        }
        
        return true
        
        //return !isEmpty && range(of: "^[a-zA-Z0-9]$", options: .regularExpression) == nil
    }
    
    
}

extension String {
    var removeLastString: String {
        if self != ""
        {
            let truncated = self.substring(to: self.index(before: self.endIndex))
            return truncated
        }
        return ""
        
    }
}

// extend String to enable sub-script with Int to get Character or sub-string
extension String
{
    subscript (i: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: i)]
    }
    
    // for convenience we should include String return
    subscript (i: Int) -> String {
        return String(describing: self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: r.lowerBound)
        let end = self.index(self.startIndex, offsetBy: r.upperBound)
        
        return String(self[start...end])
    }
}

extension NSRange {
    func rangeForString(_ str: String) -> Range<String.Index>? {
        guard location != NSNotFound else { return nil }
        return str.index(str.startIndex, offsetBy: location) ..< str.index(str.startIndex, offsetBy: location + length)
    }
}


extension String {
    var containsEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x1F600...0x1F64F, // Emoticons
            0x1F300...0x1F5FF, // Misc Symbols and Pictographs
            0x1F680...0x1F6FF, // Transport and Map
            0x2600...0x26FF,   // Misc symbols
            0x2700...0x27BF,   // Dingbats
            0xFE00...0xFE0F,   // Variation Selectors
            0x1F900...0x1F9FF:  // Supplemental Symbols and Pictographs
                return false
            default:
                continue
            }
        }
        return true
    }

    
    // formateando para mesa de regalos cantidad
    func currencyInputFormatting() -> String {
        
        var number: NSNumber!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        var amountWithPrefix = self
        
        // remove from String: "$", ".", ","
        let regex = try! NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
        amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count), withTemplate: "")
        
        let double = (amountWithPrefix as NSString).doubleValue
        number = NSNumber(value: (double / 100))
        
        // if first number is 0 or all numbers were deleted
        guard number != 0 as NSNumber else {
            return ""
        }
        
        return formatter.string(from: number)!
    }
    
}

extension String
{
    var isNumeric: Bool {
        guard self.count > 0 else { return false }
        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        return Set(self).isSubset(of: nums)
    }
    
    func stringMaskCard()->String
    {
        let cardNumber:String = self.components(separatedBy: .whitespacesAndNewlines).joined()
        //
        guard !cardNumber.isEmpty, cardNumber.isNumeric else
        {
            return "tarjeta inválida"
        }
        //
        let spaces = 4
        var maskedCard:String = ""
        let resto = cardNumber.count % spaces
        var countResto = 0
        var count = 0
        //
        var i = 0
        repeat {
            if countResto < resto
            {
                maskedCard += "*"
                //
                countResto += 1
                //
                i += 1
            }
            else
            {
                if count % (spaces + 1) == 0
                {
                    if resto != 0 || (count != 0 && resto == 0)
                    {
                        maskedCard += " "
                    }
                }
                else
                {
                    if i < (cardNumber.count - spaces)
                    {
                        maskedCard += "*"
                    }
                    else
                    {
                        let char:String = cardNumber[i]
                        maskedCard += "\(char)"
                    }
                    //
                    i += 1
                }
                //
                count += 1
            }
        } while i < cardNumber.count
        //
        return maskedCard
    }
}
