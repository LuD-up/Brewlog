//
//  ListingDetailView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct BeerDetailView: View {
    let listing: Beer
    
    var body: some View {
        ScrollView {
            // Image
            Image(listing.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            // Beer details
            VStack(spacing: 10) {
                Text(listing.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Brasserie \(listing.brewery)")
                    .font(.headline)
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Type de bière")
                        .foregroundStyle(.gray)
                    
                    Text(listing.type)
                        .font(.headline)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 10) {
                    Text("Alcool (%)")
                        .foregroundStyle(.gray)
                    
                    Text(listing.abv)
                        .font(.headline)
                }
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Description")
                    .foregroundStyle(.gray)
                
                Text(listing.description)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Button {
                
            } label: {
                Text("Selectionner")
                    .foregroundStyle(.black)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(.caca)
                    .cornerRadius(16)
                    .padding()
            }
        }
        .background(.bgPrimary)
    }
}

#Preview {
    BeerDetailView(listing: DeveloperPreview.shared.beers[4])
}
