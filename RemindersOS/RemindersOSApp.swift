//
//  RemindersOSApp.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 17-06-22.
//

import SwiftUI

@main
struct RemindersOSApp: App {
    var body: some Scene {
        WindowGroup {
           // ContentView()
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen().environment(\.managedObjectContext, viewContext)
        }
    }
}
