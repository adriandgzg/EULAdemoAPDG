//
//  DetailViewController.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 02/03/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    var mealDetail : MealsDetail?
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblInstruction: UILabel!
    @IBOutlet weak var lblIngredients: UILabel!
    @IBOutlet weak var wkVideo: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let videoID = mealDetail?.strYoutube?.youtubeID
        self.loadYoutube(videoID: videoID ?? "")
        
        lblTitle.text = mealDetail?.strMeal ?? ""
        lblInstruction.text = mealDetail?.strInstructions ?? ""
        
        lblIngredients.text! += "\n\n"
        
        if let ingrediente = mealDetail?.strIngredient1, let measure = mealDetail?.strMeasure1 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient2, let measure = mealDetail?.strMeasure2 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient3, let measure = mealDetail?.strMeasure3 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        if let ingrediente = mealDetail?.strIngredient4, let measure = mealDetail?.strMeasure4 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient5, let measure = mealDetail?.strMeasure5 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        if let ingrediente = mealDetail?.strIngredient6, let measure = mealDetail?.strMeasure6 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient7, let measure = mealDetail?.strMeasure7 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient8, let measure = mealDetail?.strMeasure8 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient9, let measure = mealDetail?.strMeasure9 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient10, let measure = mealDetail?.strMeasure10 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient11, let measure = mealDetail?.strMeasure11 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient12, let measure = mealDetail?.strMeasure12 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient13, let measure = mealDetail?.strMeasure13 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient14, let measure = mealDetail?.strMeasure14 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient15, let measure = mealDetail?.strMeasure15 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient16, let measure = mealDetail?.strMeasure16 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient17, let measure = mealDetail?.strMeasure17 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient18, let measure = mealDetail?.strMeasure18 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient19, let measure = mealDetail?.strMeasure19 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        if let ingrediente = mealDetail?.strIngredient20, let measure = mealDetail?.strMeasure20 {
            if ingrediente != "" {
                lblIngredients.text! += "- \(ingrediente)  \(measure) \n"
            }
        }
        
        
        //lblIngredients.text = mealDetail.strMeal ?? ""
        
        // Do any additional setup after loading the view.
    }

    func loadYoutube(videoID:String) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {
                    return
                }
        wkVideo.load(URLRequest(url: youtubeURL))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension String {
    var youtubeID: String? {
    let pattern = "((?<=(v|V)/)|(?<=be/)|(?<=(\\?|\\&)v=)|(?<=embed/))([\\w-]++)"
    let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    let range = NSRange(location: 0, length: count)
    guard let result = regex?.firstMatch(in: self, range: range) else {
    return nil
    }
    return (self as NSString).substring(with: result.range)
    }
}
