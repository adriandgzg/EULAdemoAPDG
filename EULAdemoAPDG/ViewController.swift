//
//  ViewController.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import UIKit

class ViewController: UIViewController,PresenterToViewProtocol {
    
    var interactor : interactorProtocol?
    var data:[SearchModel]  = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor = InteractorSearch(view: self)
        interactor?.getElementsWithSearch(stringSearch: "lasa")
    }

   
}


extension ViewController:PresenterToViewProtocol {
    
    func displayData(items: [SearchModel]) {
        
        self.data = items
        
        self.interactor?.getDetailElement(index: 0)
        
    }
    
    func UpdateBanner() {
        
    }
    
}

