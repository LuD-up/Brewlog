//
//  SearchBar.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            Text("Search a beer, brewery or place to drink")
                .font(.callout)
                .foregroundStyle(.gray)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray4))
        }
        .padding()
    }
}

#Preview {
    SearchBar()
}
