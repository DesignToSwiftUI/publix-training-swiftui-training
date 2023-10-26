//
//  FormBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct FormBasics: View {
    @State var titleBook = ""
    @State var author = ""
    @State var isExchange: Bool = true
    @State var description = "This book is about .."
    @State var price = ""
    @State private var selectedDate: Date = Date()

   private let dateFormatter: DateFormatter = {
       let formatter = DateFormatter()
       formatter.dateStyle = .medium
       return formatter
   }()

    @State private var categoryIndex = 0
    var categorySelection = ["Action", "classic","Comic Book","Fantasy","Historical","Literary Fiction","Biographies","Essays"]
    
    var body: some View {
        Form {
            Section(header: Text("General")) {
                TextField("Title", text: $titleBook)
                TextField("Author", text: $author)
                Toggle(isOn: $isExchange) {
                    Text("I'm interested in an exhange")
                }
            }
            
            
            Section() {
                Picker(selection: $categoryIndex, label: Text("Categories")) {
                    ForEach(0 ..< categorySelection.count, id:\.self) {
                        Text(self.categorySelection[$0])
                    }
                }
            }
            
            Section {
                DatePicker("Select a Date",
                                       selection: $selectedDate,
                                       displayedComponents: .date)
            }
            
            Section(header: Text("Description")) {
                TextEditor(text: $description)
            }
            
            
            Section(header: Text("Price")) {
               TextField("$0.00", text: $price)
                   .keyboardType(.numberPad)
           }
            
            Section {
               Button(action: {
                   print("submitted ..")
               }) {
                   Text("Publish now")
                       
               }
           }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FormBasics()
}
