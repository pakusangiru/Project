//
//  MapsApp.swift
//  Maps
//
//  Created by park sangil on 2022/10/28.
//

import SwiftUI

@main
struct MapsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(LocalSearchService())
        }
    }
}
