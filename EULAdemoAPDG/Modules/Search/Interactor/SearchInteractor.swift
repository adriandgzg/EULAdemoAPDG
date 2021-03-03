//
//  SearchInteractor.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import Foundation
import UIKit

protocol interactorProtocol {
    func getElementsWithSearch(stringSearch:String)
    func getDetailElement(idmeal:String)
}



class InteractorSearch:interactorProtocol {
    
    var presenter:PresenterProtocol?
    func getElementsWithSearch(stringSearch: String) {
        
        let request = RequestSearch(searchString: stringSearch)
        
        
        AsyncManager.shared.requestExecute(request) { (response:ResponseSearch) in
            self.presenter?.updateSearchElements(items: response.meals ?? [])
            
            dump(response)
        } errorCompletition: { (err) in
            dump(err)
        }
    }
    
    func getDetailElement(idmeal:String) {
        ///TODO:Detalle de producto
        dump("irAlDetalle")
        dump(idmeal)
        
        
        
    }
    
    
    
    init(view: PresenterToViewProtocol){
        presenter = SearchPresenter(viewP: view)
    }
    
    
    
}
