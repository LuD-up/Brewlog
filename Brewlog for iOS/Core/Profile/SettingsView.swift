//
//  ProfileView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(destination: ProfileView()) {
                        HStack(spacing: 20) {
                            Image("profil-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 72, height: 72)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("John Doe")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 4)
                                
                                Text("test@example.com")
                                    .font(.footnote)
                                    .accentColor(.gray)
                            }
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: SecurityPrivacy() ) {
                        HStack {
                            SettingsRowView(imageName: "bell",
                                            title: "Notifications")
                        }
                    }
                    NavigationLink(destination: SecurityPrivacy()) {
                        HStack {
                            SettingsRowView(imageName: "lock",
                                            title: "Sécurité & vie privée")
                        }
                    }
                    NavigationLink(destination: SecurityPrivacy() ) {
                        HStack {
                            SettingsRowView(imageName: "star",
                                            title: "Devenir membre premium")
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            SettingsRowView(imageName: "suitcase",
                                            title: "Compte entreprise")
                        }
                    }
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            SettingsRowView(imageName: "questionmark.circle",
                                            title: "À propos de BrewLog")
                        }
                    }
                }
                
                Button {
                    print("Sign out...")
                } label: {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .foregroundColor(.red)
                            .frame(width: 32, height: 32)
                        
                        Text("Se déconnecter")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.primary)
                            .font(.callout)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
