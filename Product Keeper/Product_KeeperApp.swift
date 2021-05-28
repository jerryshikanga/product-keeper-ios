//
//  Product_KeeperApp.swift
//  Product Keeper
//
//  Created by Jerry Shikanga on 28/05/2021.
//

import SwiftUI

@main
struct Product_KeeperApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
