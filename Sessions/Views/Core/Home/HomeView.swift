//
//  HomeView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                VStack{
                    CurrentProjectsView()
                    QuickLookView()
                }
                
            }
            .navigationTitle("Sessions")
        }
    }
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
