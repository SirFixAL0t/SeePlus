//
//  descriptionLabel.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class descriptionLabel: MainText {

    override func awakeFromNib() {
        super.awakeFromNib()
        font = UIFont(name: "HelveticaNeue-Italic", size: 14.0)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.5

    }

}
