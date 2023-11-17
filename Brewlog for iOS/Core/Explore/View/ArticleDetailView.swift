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
            
            // Article details
            VStack(spacing: 10) {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.text)
                
                Text(listing.date)
                    .font(.subheadline)
                    .foregroundStyle(.textSecondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(listing.content)
                    .foregroundStyle(.text)
                    .padding(.vertical, 40)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

#Preview {
    ArticleDetailView(listing: DeveloperPreview.shared.articles[0])
}
