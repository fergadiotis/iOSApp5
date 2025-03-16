//
//  FeaturedItemView.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    
    let featured: Featured
    
    // MARK: - BODY
    
    var body: some View {
        Image(featured.image)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width - 30, height: 200)  // Fixed height
            .clipped()
            .cornerRadius(12)
            .padding(.horizontal, 15)
    }
}

// MARK: - PREVIEW

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(featured: featured[0])
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
