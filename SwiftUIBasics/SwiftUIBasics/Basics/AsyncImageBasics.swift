//
//  AsyncImageBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct AsyncImageBasics: View {
    let url = ""//https://fakeimg.pl/200x200
    
    @State private var isImageLoaded = false
    
    
    var body: some View {
        AsyncImage(url: URL(string: url), content: view)
    }
    
    @ViewBuilder
    private func view(for phase: AsyncImagePhase) -> some View {
        switch phase {
        case .empty:
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                Image("placeholder")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                if self.isImageLoaded {
                    ProgressView()
                }
            }
            
        case .success(let image):
            image
                .resizable()
                .frame(width: 200, height: 200)
                .onAppear {
                    self.isImageLoaded = true
                }
        case .failure(let error):
            VStack(spacing: 16) {
                Image(systemName: "xmark.octagon.fill")
                    .foregroundColor(.red)
                Text(error.localizedDescription)
                    .multilineTextAlignment(.center)
            }
            
        @unknown default:
            Text("Unknown")
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    AsyncImageBasics()
}
