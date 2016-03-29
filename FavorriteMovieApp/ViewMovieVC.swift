//
//  ViewMovieVC.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class ViewMovieVC: UIViewController {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieLike: UILabel!
    @IBOutlet weak var movieImdb: UILabel!
    
    var showMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImg.image = showMovie.getImageFromData()
        movieDesc.text = showMovie.desc
        movieLike.text = showMovie.like
        movieImdb.text = showMovie.imdb
        
        title = showMovie.title!.uppercaseString
    }
}