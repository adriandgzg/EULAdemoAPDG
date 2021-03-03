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
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var viewShadow: UIView!
    
    let searchController = UISearchController(searchResultsController: nil)
    var bannerMeal : SearchModel? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        footerView.addBordersShadow()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Meals"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        self.tableView.register(UINib(nibName: "MealTableViewCell",bundle: nil), forCellReuseIdentifier: "MealTableViewCell")
        self.navigationController?.navigationItem.searchController = searchController
        self.title = "UALA"
        
        
        imageViewBanner.layer.cornerRadius = 8
        imageViewBanner.clipsToBounds = true
        viewShadow.addBordersShadow()
        
        interactor = InteractorSearch(view: self)
        router = SearchRouter(view:self)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageViewBanner.isUserInteractionEnabled = true
        imageViewBanner.addGestureRecognizer(tapGestureRecognizer)
      

     
        
        
        
        
    }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        if let mealID  = self.bannerMeal?.idMeal {
            self.interactor?.getDetailElement(idmeal:mealID)
        }
        
        

        
    // Your action
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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var item = self.data[indexPath.row]
        
        if item != nil{
            self.interactor?.getDetailElement(idmeal: item.idMeal)
        }
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
    }
    
    func goToDetailMeal(mealDetail: MealsDetail) {
        self.router?.goToDetail(Mealdetail: mealDetail)
    }
    
  
    func displayBanner(meal: SearchModel) {
        bannerMeal = meal
        DispatchQueue.main.async {
            let imageURL = URL(string: meal.photo)
            self.imageViewBanner.af_setImage(withURL: imageURL!)
        }
    }
    
}





extension ViewController: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    guard let text = searchController.searchBar.text else { return  }
    if text.count > 2 {
        self.interactor?.getElementsWithSearch(stringSearch: text)
    }
  }
}
