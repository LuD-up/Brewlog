//
//  AboutView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct AboutView: View {
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "N/A"
    
    var body: some View {
        HStack {
            Text("Version")
            Text(appVersion)
        }
        .font(.subheadline)
        .foregroundStyle(.gray)
        
    }
}

#Preview {
    AboutView()
}
