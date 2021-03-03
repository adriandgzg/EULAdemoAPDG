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
    func inicializeRandomVideos()
    func invalidateRandomvideo()
}



class InteractorSearch:interactorProtocol {
    
    var presenter:PresenterProtocol?
    var timer : Timer? = nil
    
    
    
    
    
    func getElementsWithSearch(stringSearch: String) {
        let request = RequestSearch(searchString: stringSearch)
        AsyncManager.shared.requestExecute(request) { (response:ResponseSearch) in
            self.presenter?.updateSearchElements(items: response.meals ?? [])
        } errorCompletition: { (err) in
            dump(err)
        }
    }
    
    func getDetailElement(idmeal:String) {
        let requeslookup = RequestLookup(id: idmeal)
        AsyncManager.shared.requestExecute(requeslookup) { (response:LookupResponse) in
            var item = response.meals?.filter({ (meal) -> Bool in
                meal.idMeal == idmeal ? true:false
            }).first
            
            if let mealD = item {
                self.presenter?.goToDetailSelection(meals: mealD)
            }else{
                dump("error")
            }
        } errorCompletition: { (err) in
            dump(err)
        }
    }
    
    
    
    init(view: PresenterToViewProtocol){
        presenter = SearchPresenter(viewP: view)
    }
    
    
    func inicializeRandomVideos() {
        self.getRamdomVideo()
        self.timer = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: true) { timer in
        
            self.getRamdomVideo()
        }
    }
    
    
    
    func invalidateRandomvideo(){
        self.timer?.invalidate()
    }
    
    func getRamdomVideo(){
        
        let random = RequestRandomContent()
        
        AsyncManager.shared.requestExecute(random) { (response:LookupResponse) in
            if let item = response.meals?.first {
              
                self.presenter?.updateBanner(meal: item)
            }else{
                dump("error")
            }
            
        } errorCompletition: { (err) in
            dump(err)
        }

    }
    
    
}
