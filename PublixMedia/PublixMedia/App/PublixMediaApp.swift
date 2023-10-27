//
//  PublixMediaApp.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

@main
struct PublixMediaApp: App {
    @State private var manager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            TabbedView()
                .environment(manager)
                .task {
                    await manager.initializeData()
                }
        }
    }
}
