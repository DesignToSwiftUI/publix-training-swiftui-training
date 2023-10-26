//
//  DashboardViewOld.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct DashboardViewOld: View {
    @State private var path = NavigationPath()
    
    let movie = Movie.default
    
    var body: some View {
        NavigationStack(path: $path) {
            Text("Dashboard View")
            
            List {
                NavigationLink("Detail", value: "Show")
                NavigationLink("Go to detail A", value: "Show Detail A")
                NavigationLink("Go to 32", value: 32)
                NavigationLink("Go to movie detail", value: movie)
            }
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }
            .navigationDestination(for: Int.self) { value in
                Text("number detail \(value)")
            }
            .navigationDestination(for: String.self) { value in
//                Text("Detail with value \(value)")
                DashboardDetailView(text: value)
            }
        }
        VStack {
            Text("number of detail views on the stack \(path.count)")
            Button(action: { path = NavigationPath() }) {
                Text("go back to root view")
            }
            
            Button(action: { path.removeLast() }) {
                Text("go back one view")
            }
        }
    }
}

#Preview {
    DashboardViewOld()
}
