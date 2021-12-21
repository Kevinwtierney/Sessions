//
//  RegisterView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var confirm = ""
    @State var first = ""
    @State var last = ""
    @State var shop = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AuthManager
   
    
    var body: some View {
        
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                VStack{
                    HStack{
                        
                        TextField("First Name", text: $first)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(5)
                        
                        TextField("Last Name", text: $last)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(5)
                        
                    }
                    
                    TextField("Tattoo Shop", text: $shop)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(5)
                    
                    TextField("Email Address", text: $email)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(5)
                    
                    TextField("Confirm Email Address", text: $confirm)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(5)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .cornerRadius(5)
                    
                    Button(action: {
                        
                        guard !email.isEmpty, !password.isEmpty,!confirm.isEmpty,
                              !first.isEmpty,!last.isEmpty,!shop.isEmpty, email == confirm else{
                            print("error fields are empty")
                            return
                        }
                        
                        viewModel.signUp(email: email, password: password)
                        print("Success")
                        
                    }, label: {
                        Text("Create Account")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color.black)
                            .cornerRadius(5)
                            .padding()
                    })
                    
                }
                .padding()
                Spacer()
                
            }
            .navigationTitle("Create Account")
        }
    }


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
