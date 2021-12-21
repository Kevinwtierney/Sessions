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
                    VStack{
                        CurrentProjectsImageView(imageName: "logo")
                        Text("Kevin")
                            .foregroundColor(.white)
                        Text("12/21/2021")
                            .foregroundColor(.white)
                        Text("5PM")
                            .foregroundColor(.white)
                    }
                    .background(.black)
                  
                    .cornerRadius(10)
                }
                
            }
            
        }
        .padding(.leading,1)
        
        Text("Next Sessions")
            .bold()
    }
}

struct CurrentProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProjectsView()
    }
}
