//
//  MealTableViewCell.swift
//  EULAdemoAPDG
//
//  Created by Adrian Dominguez Gómez on 03/03/21.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var imageMeal: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(SearchItem:SearchModel){
        lblName.text = SearchItem.name
        lblCategory.text = SearchItem.category
        imageMeal?.af_setImage(withURL: URL(string: SearchItem.photo)!)
        imageMeal.layer.cornerRadius = 6
        imageMeal.clipsToBounds = true

    }
    
    
    
    
}



