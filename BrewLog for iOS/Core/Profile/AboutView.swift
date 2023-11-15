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
        VStack(alignment: .leading) {
            Text("BrewLog est un logiciel open-source.")
                .font(.headline)
                .padding(.bottom)
            Text("Vous pouvez vérifier le code et contribuer ou partager un bug sur notre GitHub :")
            
            // GitHub link
            Link(destination: URL(string: "https://github.com")!) {
                HStack {
                    Text("GitHub")
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.black)
            }
            .padding()

            
            Divider()
            
            HStack {
                Text("Protection des données")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding()
            
            HStack {
                Text("Conditions d’utilisation")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding()
            
            HStack {
                Text("Mentions légales")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding()
            
            Spacer()
            
            HStack(alignment: .center) {
                Text("Version")
                Text(appVersion)
            }
            .font(.subheadline)
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
