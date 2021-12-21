//
//  AuthManager.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import Foundation
import FirebaseAuth
import SwiftUI


class AuthManager: ObservableObject{
    
    
    let auth =  Auth.auth()
    
    @Published var signedIn =  false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String){
        
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                print(error ?? "error")
                return
            }
            // Success
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
        
    }
    
    func signUp(email: String, password: String){
        
        auth.createUser(withEmail: email, password: password) {  [weak self] result, error in
            guard result != nil, error == nil else {
                print(error ?? "error")
                return
            }
            // Success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
        
    }
    
    func signOut() {
        
        try? auth.signOut()
        
        self.signedIn = false
        
    }
    
}
