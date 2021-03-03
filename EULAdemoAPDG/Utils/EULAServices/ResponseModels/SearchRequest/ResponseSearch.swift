import Foundation
import ObjectMapper

struct ResponseSearch : Mappable {
	var meals : [Meals]?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		meals <- map["meals"]
	}

}
