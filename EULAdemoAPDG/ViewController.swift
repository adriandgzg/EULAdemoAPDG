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
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        interactor = InteractorSearch(view: self)
        router = SearchRouter(view:self)
        self.tableView.register(UINib(nibName: "MealTableViewCell",bundle: nil), forCellReuseIdentifier: "MealTableViewCell")
        
        interactor?.getElementsWithSearch(stringSearch: "lasa")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.interactor?.inicializeRandomVideos()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.interactor?.invalidateRandomvideo()
    }
    
    
    

   
}


extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealTableViewCell", for: indexPath) as! MealTableViewCell
        if self.data[indexPath.row] != nil {
            cell.configureCell(SearchItem: self.data[indexPath.row])
        }
        
        return cell
        
    }
    
    
    
    
}

extension ViewController:UISearchBarDelegate{
    
}


extension ViewController:PresenterToViewProtocol {
    
    
  
    
    
    func displayData(items: [SearchModel]) {
        
        self.data = items
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
        //self.interactor?.getDetailElement(idmeal: items[0].idMeal)
        
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





