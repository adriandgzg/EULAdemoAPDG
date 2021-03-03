import Foundation
import ObjectMapper

struct Meals : Mappable {
	var idMeal : String?
	var strMeal : String?
	var strDrinkAlternate : String?
	var strCategory : String?
	var strArea : String?
	var strInstructions : String?
	var strMealThumb : String?
	var strTags : String?
	var strYoutube : String?
	var strIngredient1 : String?
	var strIngredient2 : String?
	var strIngredient3 : String?
	var strIngredient4 : String?
	var strIngredient5 : String?
	var strIngredient6 : String?
	var strIngredient7 : String?
	var strIngredient8 : String?
	var strIngredient9 : String?
	var strIngredient10 : String?
	var strIngredient11 : String?
	var strIngredient12 : String?
	var strIngredient13 : String?
	var strIngredient14 : String?
	var strIngredient15 : String?
	var strIngredient16 : String?
	var strIngredient17 : String?
	var strIngredient18 : String?
	var strIngredient19 : String?
	var strIngredient20 : String?
	var strMeasure1 : String?
	var strMeasure2 : String?
	var strMeasure3 : String?
	var strMeasure4 : String?
	var strMeasure5 : String?
	var strMeasure6 : String?
	var strMeasure7 : String?
	var strMeasure8 : String?
	var strMeasure9 : String?
	var strMeasure10 : String?
	var strMeasure11 : String?
	var strMeasure12 : String?
	var strMeasure13 : String?
	var strMeasure14 : String?
	var strMeasure15 : String?
	var strMeasure16 : String?
	var strMeasure17 : String?
	var strMeasure18 : String?
	var strMeasure19 : String?
	var strMeasure20 : String?
	var strSource : String?
	var dateModified : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		idMeal <- map["idMeal"]
		strMeal <- map["strMeal"]
		strDrinkAlternate <- map["strDrinkAlternate"]
		strCategory <- map["strCategory"]
		strArea <- map["strArea"]
		strInstructions <- map["strInstructions"]
		strMealThumb <- map["strMealThumb"]
		strTags <- map["strTags"]
		strYoutube <- map["strYoutube"]
		strIngredient1 <- map["strIngredient1"]
		strIngredient2 <- map["strIngredient2"]
		strIngredient3 <- map["strIngredient3"]
		strIngredient4 <- map["strIngredient4"]
		strIngredient5 <- map["strIngredient5"]
		strIngredient6 <- map["strIngredient6"]
		strIngredient7 <- map["strIngredient7"]
		strIngredient8 <- map["strIngredient8"]
		strIngredient9 <- map["strIngredient9"]
		strIngredient10 <- map["strIngredient10"]
		strIngredient11 <- map["strIngredient11"]
		strIngredient12 <- map["strIngredient12"]
		strIngredient13 <- map["strIngredient13"]
		strIngredient14 <- map["strIngredient14"]
		strIngredient15 <- map["strIngredient15"]
		strIngredient16 <- map["strIngredient16"]
		strIngredient17 <- map["strIngredient17"]
		strIngredient18 <- map["strIngredient18"]
		strIngredient19 <- map["strIngredient19"]
		strIngredient20 <- map["strIngredient20"]
		strMeasure1 <- map["strMeasure1"]
		strMeasure2 <- map["strMeasure2"]
		strMeasure3 <- map["strMeasure3"]
		strMeasure4 <- map["strMeasure4"]
		strMeasure5 <- map["strMeasure5"]
		strMeasure6 <- map["strMeasure6"]
		strMeasure7 <- map["strMeasure7"]
		strMeasure8 <- map["strMeasure8"]
		strMeasure9 <- map["strMeasure9"]
		strMeasure10 <- map["strMeasure10"]
		strMeasure11 <- map["strMeasure11"]
		strMeasure12 <- map["strMeasure12"]
		strMeasure13 <- map["strMeasure13"]
		strMeasure14 <- map["strMeasure14"]
		strMeasure15 <- map["strMeasure15"]
		strMeasure16 <- map["strMeasure16"]
		strMeasure17 <- map["strMeasure17"]
		strMeasure18 <- map["strMeasure18"]
		strMeasure19 <- map["strMeasure19"]
		strMeasure20 <- map["strMeasure20"]
		strSource <- map["strSource"]
		dateModified <- map["dateModified"]
	}

}
