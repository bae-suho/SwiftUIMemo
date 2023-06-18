//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 배수호 on 2023/06/18.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
