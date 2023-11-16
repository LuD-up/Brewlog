//
//  ArticleView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import SwiftUI

struct ArticleDetailView: View {
    let listing: Article
    var body: some View {

        ScrollView {
            // Image
            Image(listing.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            // Beer details
            VStack(spacing: 10) {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(listing.date)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(listing.content)
                    .padding(.vertical, 40)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .scrollIndicators(.hidden)
        .padding()
        .background(.bgPrimary)
    }
}

#Preview {
    ArticleDetailView(listing: DeveloperPreview.shared.articles[1])
}
