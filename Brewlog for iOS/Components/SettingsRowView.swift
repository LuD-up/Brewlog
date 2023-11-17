//
//  SettingsRowView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(.text)
            
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.text)
        }
    }
}

#Preview {
    SettingsRowView(imageName: "questionmark",
                    title: "Placeholder")
}
