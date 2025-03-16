//
//  WatchItemView.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

struct WatchItemView: View {
    // MARK: - PROPERTY
    
    let watch: Watch
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // IMAGE
            ZStack {
                Image(watch.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color.white)
            .cornerRadius(12)
            
            // NAME
            Text(watch.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(watch.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        .padding(10)
        .background(Color.white.cornerRadius(12))
    }
}

struct WatchItemView_Previews: PreviewProvider {
    static var previews: some View {
        WatchItemView(watch: watches[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
