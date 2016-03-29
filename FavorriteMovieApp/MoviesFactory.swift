//
//  MoviesFactory.swift
//  FavorriteMovieApp
//
//  Created by Federico Enrriquez on 3/28/16.
//  Copyright © 2016 Federico Enrriquez. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class MovieFactory {
    
    static var ENTITY_NAME: String = "Movie"
    
    static func fetchAll() -> [Movie] {
        
        let context = MovieFactory.getAppContext()
        let fetchRequest = NSFetchRequest(entityName: ENTITY_NAME)
        
        do {
            let result = try context.executeFetchRequest(fetchRequest)
            return result as! [Movie]
        } catch let err as NSError{
            print(err.debugDescription)
            return [Movie]()
        }
    }
    
    static func getAppContext() -> NSManagedObjectContext {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        return app.managedObjectContext
    }
    
    static func getEntity() -> Movie {
        let context = MovieFactory.getAppContext()
        let entity = NSEntityDescription.entityForName(ENTITY_NAME, inManagedObjectContext: context)!
        return Movie(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    static func saveMovie(movie: Movie) -> Bool {
        let context = MovieFactory.getAppContext()
        
        context.insertObject(movie)
        
        do {
            try context.save()
            return true
        } catch let err as NSError {
            print(err.debugDescription)
            return false
        }
    }
}
