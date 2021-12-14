//
//  QuickLookView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI


struct QuickLookView: View {
    var body: some View{
        VStack{
            
            VStack{
                // Project name and date started
                Text("Dragon and Samurai")
                    .bold()
                    .font(.system(size: 22))
                Text("Canvas: Kevin")
                Text("12/31/2021")
                    .font(.caption)
            }
            .padding(.top,10)
            
            // Main Image
            QuickLookImageView(imageName:"foo")
            
            // Main N0te
            
            VStack{
                
                HStack{
                    Text("NOTE:")
                        .bold()
                        Spacer()
                }
                .padding(.leading,10)
                .padding(.bottom, 3)
                
                Text("This tattoo is to represent my son and the journey he and mmy wife had tro go through before he was born.  it will have an evil samarui to represent blue cross blue shield, and a dragon protecting its baby")
                    .padding(.leading, 10)
                
            }
        }
    }
}

struct QuickLookView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLookView()
    }
}
