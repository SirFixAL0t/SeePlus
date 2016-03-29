//
//  TitleLabel.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class TitleLabel: MainText {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        font = UIFont(name: "HelveticaNeue", size: 25.0)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.7
    }

}
