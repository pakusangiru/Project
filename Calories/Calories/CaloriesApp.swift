//
//  ContentView.swift
//  Calories
//
//  Created by park sangil
//

import SwiftUI

@main
struct CaloriesApp: App {
    
    @StateObject private var dataContorller = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataContorller.container.viewContext)
        }
    }
}
