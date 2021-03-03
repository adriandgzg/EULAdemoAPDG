//
//  UserKLU.swift
//  KLU
//
//  Created by Adrian Dominguez Gómez on 10/12/20.
//  Copyright © 2020 PICAZO. All rights reserved.
//

import Foundation


class UserKLU {
    
    var IdUser = "idUsr"
    
    static let shared = UserKLU()
    var userData: DataLogin? = nil {
        didSet{
            saveStrID(ID: userData?.idUser ?? "")
        }
    }
    
    func saveStrID (ID : String) {
        UserDefaults.standard.set(ID, forKey: IdUser)
    }
    
    func retrieveUserID () -> String{
        return UserDefaults.standard.string(forKey: IdUser) ?? ""
    }
    
    init(){
       
    }
    
    
    
}
