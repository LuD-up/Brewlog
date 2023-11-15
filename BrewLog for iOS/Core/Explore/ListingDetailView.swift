//
//  ListingDetailView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct ListingDetailView: View {
    var body: some View {
        ScrollView {
            // Image
            Rectangle()
                .frame(width: 320, height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            // Listing details
            Text("Thelma")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 4) {
                Text("Brasserie")
                Text("Thiriez")
            }
            .font(.subheadline)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Type de bière")
                        .foregroundStyle(.gray)
                    
                    Text("Double Saison")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Alcool")
                        .foregroundStyle(.gray)
                    
                    Text("7%")
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Description")
                    .foregroundStyle(.gray)
                
                Text("Une bière rafraîchissante brassée avec des fleurs d’hibiscus et du poivre de Madagascar aux légères notes de pamplemousse, une aromatique exotique mémorable.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            Button {
                
            } label: {
                Text("Sélectionner")
                    .foregroundStyle(.white)
                    .font(.callout)
                    .fontWeight(.bold)
                    .frame(width: 320, height: 64)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .frame(maxWidth: .infinity)
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
