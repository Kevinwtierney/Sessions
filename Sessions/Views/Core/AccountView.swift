//
//  AccountView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct AccountView: View {
    
    @EnvironmentObject var viewModel: AuthManager
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List{
                    
                    HStack(){
                        Text("Name:")
                            .frame(width:80,height: 50,alignment: .leading)
                        
                        Text("Kevin Tierney")
                        Spacer()
                    }
                    HStack(){
                        Text("Email:")
                            .frame(width:80,height: 50,alignment: .leading)
                        
                        Text("kevinwtierney@gmail.com")
                        Spacer()
                    }
                    HStack(){
                        Text("Phone:")
                            .frame(width:80,height: 50,alignment: .leading)
                        
                        Text("(408) 761-2261)")
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("Shop")
                            .bold()
                            .font(.system(size: 20))
                            .frame(height:50)
                        Spacer()
                    }
                    
                    
                    
                    HStack(){
                        Text("name:")
                            .frame(width:80,height: 50,alignment: .leading)
                        
                        Text("Players Ink")
                        Spacer()
                    }
                    
                    HStack(){
                        Text("address:")
                            .frame(width:80,height: 50,alignment: .leading)
                        
                        Text("518 W San Carlos St, San Jose, CA 95126")
                        Spacer()
                        
                        
                    }
                    
                    
                    HStack{
                        
                        Button {
                            viewModel.signOut()
                            
                        } label: {
                            Text("Reset Password")
                                .frame(height: 50)
                                .foregroundColor(.blue)
                        }
                        
                    }
                    
                    
                    
                }
                
            }
            .navigationTitle("Account")
            .toolbar {
                Button {
                    viewModel.signOut()
                } label: {
                    Text("SignOut")
                }
                
            }
        }
        
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
