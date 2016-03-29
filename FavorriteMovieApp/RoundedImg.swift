//
//  RoundedImg.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class RoundedImg: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //layer.cornerRadius = layer.frame.size.width / 2
        layer.cornerRadius = 4.0
        clipsToBounds = true
    }

}
