//
//  FeaturedTabView.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(featured) { item in
                FeaturedItemView(featured: item)
            }
        } //: TAB
        .frame(height: 200) // Fixed height to match FeaturedItemView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .background(colorBackground)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 13")
            .background(colorBackground)
    }
}
