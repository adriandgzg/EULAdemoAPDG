//
//  SearchPresenter.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import Foundation


protocol PresenterProtocol{
    func updateSearchElements(items:[Meals])
    func goToDetailSelection(idMeal:String)
    
}

protocol PresenterToViewProtocol {
    func displayData(items:[SearchModel])
    func UpdateBanner()
}


class SearchPresenter:PresenterProtocol {
 
    var interactor : InteractorSearch?
    var view :PresenterToViewProtocol?
    init(viewP:PresenterToViewProtocol) {
        self.view = viewP
    }
    
    func updateSearchElements(items: [Meals]) {
        let newItems = items.map { (meal) -> SearchModel in
            if let idmeal = meal.idMeal, let photo = meal.strMealThumb , let name =  meal.strMeal, let category = meal.strCategory {
                return SearchModel(idMeal: idmeal, photo: photo , name: name, category: category)
            }
            return SearchModel(idMeal: "none", photo: "none", name: "none", category: "none")
        }.filter { (item) -> Bool in
            if item.idMeal == "none" {
                return false
            }
            
            return true
        }
    
        view?.displayData(items: newItems)
        
    }
    
    func goToDetailSelection(idMeal:String) {
        
    }
    
    
}
