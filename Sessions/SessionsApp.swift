//
//  SessionsApp.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI
import Firebase

@main
struct SessionsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
