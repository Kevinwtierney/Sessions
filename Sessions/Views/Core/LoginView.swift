//
//  LoginView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .background(Color.blue)
                    .padding()
                
                VStack{
                    TextField("Email Address", text: $email)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    SecureField("Email Address", text: $password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Button(action: {
                        
                        guard !email.isEmpty, !password.isEmpty else{
                            print("error fields are empty")
                            return
                        }
                        
                        print("Success")
                        
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(5)
                            .padding()
                    })
                    
                    NavigationLink("Need an account? Sign Up", destination: RegisterView())
                }
                .padding()
                Spacer()
                
            }
            .navigationTitle("Sign In")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
