//
//  MainVC.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var viewMovieVC: ViewMovieVC!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewMovieVC = ViewMovieVC()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        title = "SEE +"
        
        tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        movies = MovieFactory.fetchAll()
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 269.0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = MovieCell()
        
        if let c = tableView.dequeueReusableCellWithIdentifier("MovieCell") as? MovieCell {
            cell = c
        }
        
        let row = movies[indexPath.row]
    
        cell.configureCell(row)
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toViewMovieVC" {
            let movieCell = sender as! MovieCell
            let movie = movieCell.source
            let movieVC = segue.destinationViewController as! ViewMovieVC
            movieVC.showMovie = movie
        }
    }

}
