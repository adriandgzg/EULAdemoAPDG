//
//  SearchRouter.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import Foundation
import UIKit


class SearchRouter{
    var view : ViewController?
    init(view:ViewController){
        self.view = view
    }
    func goToDetail(Mealdetail:MealsDetail){
        dump(Mealdetail)
        //TODO:AquiMandaA llamar a tu pantalla

    }
}
