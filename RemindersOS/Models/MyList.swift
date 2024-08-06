//
//  MyList.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 17-06-22.
//


import Foundation
import CoreData
import AppKit
@objc(MyList)
class MyList: NSManagedObject, BaseModel{
    
}

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?

}

extension MyList : Identifiable {

}
