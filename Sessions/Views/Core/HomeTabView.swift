//
//  HomeTabView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        
        TabView{
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
                
            
            ProjectsView()
                .tabItem {
                    Image(systemName: "tray")
                    
                    Text("Projects")
                }
            
            MyClientsView()
                .tabItem {
                    Image(systemName: "person.3")
                    
                    Text("Clients")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                    
                    Text("Profile")
                }
        }
     
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
