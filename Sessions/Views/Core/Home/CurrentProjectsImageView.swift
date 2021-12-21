//
//  CurrentProjectsImageView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/13/21.
//

import SwiftUI

struct CurrentProjectsImageView: View {
    let imageName: String
    var body: some View {
        
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(5)
            .padding(5)
            .padding(.bottom,0)
        
    }
}

struct CurrentProjectsImageView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProjectsImageView(imageName:"logo")
    }
}
