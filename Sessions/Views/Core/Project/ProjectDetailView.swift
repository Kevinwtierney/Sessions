//
//  ProjectDetailView.swift
//  Sessions
//
//  Created by Kevin Tierney on 12/20/21.
//

import SwiftUI

struct ProjectDetailView: View {
    var projectTitle = ""
    var body: some View {
        VStack{
            Text("hello World")
        }
        .navigationTitle("\(projectTitle) Project")
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView()
    }
}
