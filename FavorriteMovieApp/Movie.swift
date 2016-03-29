//
//  Movie.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setImageData(img: UIImage) {
        image = UIImagePNGRepresentation(img)
    }
    
    func getImageFromData() -> UIImage? {
        return UIImage(data: image!)
    }

}
