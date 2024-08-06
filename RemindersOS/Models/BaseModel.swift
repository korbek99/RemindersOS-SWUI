//
//  BaseModel.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 20-06-22.
//

import Foundation
import CoreData
protocol BaseModel{
    static var viewContext: NSManagedObjectContext { get }
    func save() throws
}
extension BaseModel where Self: NSManagedObject{
    static var viewContext: NSManagedObjectContext{
        CoreDataManager.shared.persistentContainer.viewContext
    }
    func save() throws{
        try Self.viewContext.save()
    }
}
