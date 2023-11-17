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
        NavigationStack {
            VStack(alignment: .leading) {
                Text("BrewLog est un logiciel open-source.")
                    .font(.headline)
                    .padding(.bottom)
                Text("Vous pouvez vérifier le code et contribuer ou partager un bug sur notre GitHub :")
                
                // GitHub repo link
                Link(destination: URL(string: "https://github.com/LuD-up/BrewLog")!) {
                    HStack {
                        Text("GitHub")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Image(systemName: "link")
                            .frame(width: 32, height: 32)
                    }
                    .foregroundStyle(.text)
                }
                .padding()

                
                Divider()
                    .background(.border)
                
                NavigationLink(destination: PrivacyPolicyView()) {
                    HStack {
                        Text("Protection des données")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.text)
                    .padding()
                }
                
                NavigationLink(destination: TermsOfUseView()) {
                    HStack {
                        Text("Conditions d’utilisation")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.text)
                    .padding()
                }
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text("Version")
                    Text(appVersion)
                }
                .font(.subheadline)
                .foregroundStyle(.textSecondary)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
