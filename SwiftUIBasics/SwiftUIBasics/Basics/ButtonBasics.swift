//
//  ButtonBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct ButtonBasics: View {
    @State private var isShowingDialog = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(spacing: 20) {
                    Button("Click Meddd") {}
                        .buttonStyle(.borderedProminent)
                    
                    Button("Click Me") {}
                        .buttonStyle(.bordered)
                    
                    Button("Click Me") {}
                        .buttonStyle(.borderless)
                    
                    Button("Click Me") {}
                        .buttonStyle(.plain)
                    
                    Button("Click Me") {}
                        .buttonStyle(.automatic)
                    
                    Button("Click Me") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.black)
                }
                Spacer(minLength: 30)
                VStack(spacing: 20) {
                    Button("Click Me") {}
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .buttonStyle(.borderedProminent)
                        .controlSize(.extraLarge)
                        .tint(.black)
                    
                    
                    Button("Click Mse") {}
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .tint(.black)
                    
                    Button("Click Me") {}
                        .buttonStyle(.bordered)
                        .controlSize(.small)
                        .tint(.black)
                    
                    Button("Click Mse") {}
                        .buttonBorderShape(.capsule)
                        .buttonStyle(.borderedProminent)
                        .controlSize(.regular)
                        .tint(.black)
                }
                
            }
            .padding(.horizontal)
            
            HStack {
                Button("Delete", role: .destructive) {
                    isShowingDialog = true
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .confirmationDialog("Are you sure to delete the data?", isPresented: $isShowingDialog, titleVisibility: .visible) {
         
                    Button("Confirm", role: .destructive) {
                        // Handle the delete action.
                    }
                    Button("Cancel", role: .cancel) {
         
                    }
                }
                
                Button(action: {}) {
                    Text("Add to Cart")
                        .font(.headline)
                }
                .padding()
                .background(.ultraThinMaterial, in: Capsule())
                
            }
        }
    }
}

#Preview {
    ButtonBasics()
}
