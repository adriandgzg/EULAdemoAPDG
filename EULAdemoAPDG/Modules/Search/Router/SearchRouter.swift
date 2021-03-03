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
        let vc : DetailViewController =  DetailViewController(nibName: "DetailViewController", bundle: nil) //change this to your class name
        vc.mealDetail = Mealdetail
        view?.present(vc, animated: true, completion: nil)
    }
}
