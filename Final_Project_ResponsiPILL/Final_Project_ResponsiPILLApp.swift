//
//  Final_Project_ResponsiPILLApp.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/12/23.
//

import SwiftUI

@main
struct ResponsiPILL_AppApp: App {
    //let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
            
            
           // Reminders().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
