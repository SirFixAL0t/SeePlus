//
//  MovieCell.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var imdbLbl: UILabel!
    
    var source: Movie!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        preservesSuperviewLayoutMargins = false
        layoutMargins = UIEdgeInsetsZero
        separatorInset = UIEdgeInsetsZero
    }
    
    func configureCell(movie: Movie) {
        img.image = movie.getImageFromData()
        titleLbl.text = movie.title
        descLbl.text = movie.like
        imdbLbl.text = movie.imdb
        
        source = movie
    }
}