//
//  ListingView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // Image
            Rectangle()
                .frame(width: 200, height: 240)
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
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingItemView()
}
