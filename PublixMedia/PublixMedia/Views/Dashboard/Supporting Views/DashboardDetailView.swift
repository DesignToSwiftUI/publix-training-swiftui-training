//
//  DashboardDetailView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct DashboardDetailView: View {
    let text: String
    
    var body: some View {
        VStack {
            Text("Detail View")
            Text(text)
            Divider()
            
            NavigationLink("Link to 3", value: 3)
            NavigationLink("Link to D", value: "DDDDD")
        }
    }
}

#Preview {
    DashboardDetailView(text: "Text goes here")
}
