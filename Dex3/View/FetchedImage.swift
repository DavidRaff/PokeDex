//
//  FetchedImage.swift
//  Dex3
//
//  Created by David Laczkovits on 10.10.23.
//

import SwiftUI

struct FetchedImage: View {
    
    let url: URL?
    
    var body: some View {
        if let url, let imageData = try? Data(contentsOf: url), let uiImage = UIImage(data: imageData) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 6)
        } else {
            Image(.bulbasaur)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 6)
        }
    }
}

#Preview {
    FetchedImage(url: SamplePokemon.samplePokemon.sprite)
}
