//
//  ListingArticleView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import SwiftUI

struct ListingArticleView: View {
    let listing: Article
    
    var body: some View {
        VStack {
            // Image
            Image(listing.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // Article details
            VStack(spacing: 8) {
                Text(listing.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(listing.date)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(width: 280)
    }
}

#Preview {
    ListingArticleView(listing: DeveloperPreview.shared.articles[2])
}
