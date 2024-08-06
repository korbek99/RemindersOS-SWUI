//
//  CoreDataManager.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 20-06-22.
//

import Foundation
import CoreData
import AppKit

class CoreDataManager{
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init(){
        ValueTransformer.setValueTransformer(NSColorTransformer(), forName: NSValueTransformerName("NSColorTransformer"))
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores{ description , error in
            if let error = error{
                fatalError("Unable to initialize Core Data \(error)")
            }
            
        }
    }
}
