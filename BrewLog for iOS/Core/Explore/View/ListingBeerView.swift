//
//  ListingView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct ListingBeerView: View {
    let listing: Beer
    
    var body: some View {
        VStack(alignment: .center) {
            // Image
            Image(listing.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
            
            // Listing details
            Text(listing.name)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.text)
                .padding(.top, 16)
            
            Text("Brasserie \(listing.brewery)")
                .font(.subheadline)
                .foregroundStyle(.textSecondary)
        }
        .padding(20)
        .frame(width: 200)
        .background(.backgroundElevated)
        .cornerRadius(16)
    }
}

#Preview {
    ListingBeerView(listing: DeveloperPreview.shared.beers[1])
}
