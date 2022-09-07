

import Foundation
import SwiftUI
import CoreLocation

struct Cyber: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var statement: String
    var intro: String
    var description: String
    var isFeatured: Bool
    var isFavorite: Bool
    var uconnlink: String

    
    
    

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case part1 = "Learn"
        case part2 = "Protect Yourself"
        case part3 = "Uconn"
    }

   var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var image1: String
    var newimage: Image {
        Image(image1)
    }
    private var image2: String
    var newerimage: Image {
        Image(image2)
    }



}
