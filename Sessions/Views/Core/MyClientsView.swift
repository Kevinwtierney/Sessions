//
//  MyClientsArtistsView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct MyClientsView: View {
    @State var searchText = ""
    let canvas = ["Kevin", "Sean", "Jameson", "Tiffani"]
    
    
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach(searchResults, id: \.self){ name in
                    
                    NavigationLink( destination: ProjectDetailView(projectTitle:name), label: {
                        
                        HStack{
                            Text(name)
                                .bold()
                                .frame(width: 100, alignment: .leading)
                            Spacer()
                            Text("Email: kevinwtierney@gmail.com")
                            Spacer()
                        }
                    })
                    
                }
            }
            .searchable(text: $searchText){
                ForEach(searchResults, id: \.self){ result in
                    if !searchText.isEmpty{
                        Text("Are you looking for \(result)?").searchCompletion(result)
                    }
                }
            }
            .autocapitalization(.none)
            .navigationTitle("Clients")
            
            
            .toolbar {
                Button {
                    
                } label: {
                    HStack{
                        Text("New Client")
                        Image(systemName: "plus")
                    }
                    
                }
                
            }
        }
    }
    var searchResults: [String] {
        if searchText.isEmpty {
            return canvas
        } else {
            return canvas.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    
    
    struct MyClientsView_Previews: PreviewProvider {
        static var previews: some View {
            MyClientsView()
        }
    }
}

