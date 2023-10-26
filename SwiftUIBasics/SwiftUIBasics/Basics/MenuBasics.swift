//
//  MenuBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI


struct MenuBasics: View {
    
    var body: some View {
        NavigationStack {
            Text("")
                .toolbar {
                    ToolbarItemGroup {
                        basicToolbarItems
                        toolbarItems
                    }
            }
        }
    }
    
    @ViewBuilder
    var basicToolbarItems: some View {
        Menu {
            Button("Order Now", action: placeOrder)
            Button("Adjust Order", action: adjustOrder)
            Button("Cancel", action: cancelOrder)
        } label: {
            Label("Settings", systemImage: "gearshape")
                .symbolVariant(.fill)
                .labelStyle(.iconOnly)
        }
    }
    
    @ViewBuilder
    var toolbarItems: some View {
        Menu{
            Button("Order Now", action: placeOrder)
            Button("Adjust Order", action: adjustOrder)
            Menu("Advanced") {
                Button("Rename", action: rename)
                Button("Delay", action: delay)
            }
            Button("Cancel", action: cancelOrder)
        } label: {
            Label("Options", systemImage: "slider.horizontal.3")
                .labelStyle(.iconOnly)
        }
    }
    
    func placeOrder() { }
    func adjustOrder() { }
    func cancelOrder() { }
    func rename() { }
    func delay() { }
}

#Preview {
    MenuBasics()
}
