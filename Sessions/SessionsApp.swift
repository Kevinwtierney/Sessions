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
    
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    

    var body: some Scene {
        WindowGroup {
            let viewModel = AuthManager()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
