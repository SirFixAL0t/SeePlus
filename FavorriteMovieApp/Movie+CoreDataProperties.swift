//
//  Movie+CoreDataProperties.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var desc: String?
    @NSManaged var image: NSData?
    @NSManaged var imdb: String?
    @NSManaged var like: String?
    @NSManaged var title: String?

}
