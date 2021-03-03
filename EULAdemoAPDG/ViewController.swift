//
//  ViewController.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController {
    
    var interactor : interactorProtocol?
    var data:[SearchModel]  = []
    var router:SearchRouter? = nil
    
    /*Outlet*/
    @IBOutlet weak var imageViewBanner: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor = InteractorSearch(view: self)
        router = SearchRouter(view:self)
        
        
        interactor?.getElementsWithSearch(stringSearch: "lasa")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.interactor?.inicializeRandomVideos()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.interactor?.invalidateRandomvideo()
    }
    
    
    

   
}


extension ViewController:PresenterToViewProtocol {
    
    
  
    
    
    func displayData(items: [SearchModel]) {
        
        self.data = items
        
        self.interactor?.getDetailElement(idmeal: items[0].idMeal)
        
    }
    
    func goToDetailMeal(mealDetail: MealsDetail) {
        self.router?.goToDetail(Mealdetail: mealDetail)
    }
    
    func displayBanner(meal: SearchModel) {
        dump("Actualizar")
        DispatchQueue.main.async {
            let imageURL = URL(string: meal.photo)
            self.imageViewBanner.af_setImage(withURL: imageURL!)
        }
    }
    
}



