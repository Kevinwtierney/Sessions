//
//  ProjectsView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct ProjectsView: View {

    @State var searchText = ""
    let projects = ["dragon", "cross", "irish"]
    
    
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach(searchResults, id: \.self){ num in
                    
                    NavigationLink( destination: ProjectDetailView(projectTitle:num), label: {
                        
                        HStack{
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 70, alignment: .center)
                                
                            
                            VStack( alignment: .leading, spacing: 5){
                                Text("\(num)")
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                
                                Text("For: Kevin Tierney")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
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
            .navigationTitle("Projects")
            
                
            .toolbar {
                Button {
                    
                } label: {
                    HStack{
                        Text("New Project")
                        Image(systemName: "plus")
                    }
                    
                }

            }
        }
    }
    var searchResults: [String] {
            if searchText.isEmpty {
                return projects
            } else {
                return projects.filter { $0.contains(searchText) }
            }
}



struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
}
