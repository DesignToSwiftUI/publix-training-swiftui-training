//
//  ListExample1.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI

struct Place: Identifiable {
    let id: UUID
    var name: String
    var icon: String
    
    init(name: String, icon: String) {
        self.id = UUID()
        self.name = name
        self.icon = icon
    }
}

struct ListExample1: View {
    let characters = ["Arya Stark", "Ed Stark", "Jamie Lannister", "Tyrion Lannister", "Jon Snow", "Daenerys Targaryen"]
    
    let places = [
        Place(name: "Miami", icon: "bicycle"),
        Place(name: "Chicago", icon: "tram"),
        Place(name: "New Orleans", icon: "figure.walk"),
        Place(name: "Los Angeles", icon: "car"),
        Place(name: "Austin", icon: "camera"),
        Place(name: "Las Vegas", icon: "airplane")
    ]
    
    var body: some View {
//        List(characters, id: \.self) { character in
//            Text(character)
////                .listRowSeparator(.hidden)
//        }
//        .listStyle(.insetGrouped)
        
//        List {
//            ForEach(characters, id: \.self) { character in
//                Text(character)
//            }
//        }
        
        
        
        List {
            ForEach(places) { place in
                Label(place.name, systemImage: place.icon)
                    .font(.system(size: 24))
                    .symbolVariant(.circle)
                    .symbolVariant(.fill)
                    .listItemTint(.preferred(Color.blue))
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .padding(.horizontal)
        }
        .listStyle(.plain)
        
//        List {
//            ForEach(places.indices, id:
//                    \.self) { index in
//                Label(places[index].name, systemImage: places[index].icon)
//                    .font(.system(size: 24))
//                    .symbolVariant(.circle)
//                    .symbolVariant(.fill)
//                    .listItemTint(.preferred(Color.blue))
//                    .listRowBackground((index % 2 == 0) ? Color(.systemGray) : Color.white)
//            }
//        }
        
//        ZStack {
//            Color.gray.opacity(0.3).ignoresSafeArea()
//            
//            List {
//                Section(header: Text("Section Header "),
//                        footer: Text("Footer goes here")) {
//                    Text("Row 1")
//                        .listRowBackground(Color.gray.opacity(0.3))
//                }
//            }
//            .scrollContentBackground(.hidden)
//        }
        
//        List {
//            Text("Arya Stark")
//            Text("Jon Snow")
//            Text("Jamie Lannister").listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
//            Text("Ed Stark")
//            Text("Tyrion Lannister")
//            Text("Daenerys Targaryen")
//                .listRowBackground(Color.clear)
//        }
//        .background(Color.gray)
//        .scrollContentBackground(.hidden)
        
    }
}

#Preview {
    ListExample1()
}
