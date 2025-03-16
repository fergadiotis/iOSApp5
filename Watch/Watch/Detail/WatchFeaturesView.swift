//
//  WatchFeaturesView.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

struct WatchFeaturesView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Features")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 2)
            
            VStack(alignment: .leading, spacing: 4) {
                ForEach(shop.selectedProduct?.features ?? sampleWatch.features, id: \.self) { feature in
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.blue)
                        
                        Text(feature)
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .padding()
        .background(Color.white.cornerRadius(12))
    }
}

// MARK: - PREVIEW

struct WatchFeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFeaturesView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
