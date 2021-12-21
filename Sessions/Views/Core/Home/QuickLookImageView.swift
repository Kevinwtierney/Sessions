//
//  QuickLookImageView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct QuickLookImageView: View {
    let imageName: String
    var body: some View {
        
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400, height: 400, alignment: .center)
            
            .cornerRadius(5)
            .padding(3)
        
    }
}

struct QuickLookImageView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLookImageView(imageName:"logo")
    }
}
