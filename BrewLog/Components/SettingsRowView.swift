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
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    SettingsRowView(imageName: "questionmark",
                    title: "Placeholder",
                    tintColor: Color(.systemGray))
}
