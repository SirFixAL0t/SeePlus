//
//  AddMovieVC.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UITextField!
    @IBOutlet weak var movieDesc: UITextField!
    @IBOutlet weak var movieIMDB: UITextField!
    @IBOutlet weak var movieLike: UITextField!
    
    var imgPicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgPicker = UIImagePickerController()
        imgPicker.delegate = self
        
        title = "ADD MOVIE"
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        movieImg.image = image
        imgPicker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onAddImgTapped(sender: UIButton) {
        presentViewController(imgPicker, animated: true, completion: nil)
    }
    
    
    @IBAction func onCreateMovieTapped(sender: UIButton) {
        if let img = movieImg.image where img != "", let title = movieName.text where title != "", let desc = movieDesc.text where desc != "", let imdb = movieIMDB.text where imdb != "", let like = movieLike.text where like != "" {
            let movie = MovieFactory.getEntity()
            movie.setImageData(img)
            movie.desc = desc
            movie.like = like
            movie.title = title
            movie.imdb = imdb
            
            if MovieFactory.saveMovie(movie) {
                navigationController?.popViewControllerAnimated(true)
            }
        }
    }
}