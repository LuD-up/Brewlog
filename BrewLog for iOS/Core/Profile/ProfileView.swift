//
//  ProfileView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        List {
            Section {
                HStack {
                    Text("JD")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
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
            
            NavigationStack {
                NavigationLink(destination: AboutView()) {
                    HStack {
                        SettingsRowView(imageName: "questionmark.circle",
                                        title: "À propos",
                                        tintColor: Color(.systemGray))
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

#Preview {
    ProfileView()
}
