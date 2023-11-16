//
//  SearchBar.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 24, height: 24)
            
            Text("Chercher une bière, un bar...")
                .font(.body)
                .lineLimit(1)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color(.backgroundElevated))
        .cornerRadius(16)
        .padding()
    }
}

#Preview {
    SearchBar()
}
