//
//  CurrentProjectsView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct CurrentProjectsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack{
                ForEach(0...10, id: \.self){ num in
                    CurrentProjectsImageView(imageName: "foo")
                }
             
            }
        }
        
        Text("Recent Sessions")
            .bold()
    }
}

struct CurrentProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProjectsView()
    }
}
