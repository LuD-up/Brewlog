//
//  Security&Privacy.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 17/11/2023.
//

import SwiftUI

struct SecurityPrivacy: View {
    var body: some View {
        NavigationStack {
            HStack(spacing: 16) {
                Image(systemName: "chevron.left")
                Text("Sécurité & vie privée")
            }
            .font(.title3)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            HStack {
                HStack(spacing: 16) {
                    Image(systemName: "apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Se connecter avec Apple")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                
                Spacer()
                
                Toggle(isOn: .constant(true)) {
                    
                }
                .frame(maxWidth: 60)
            }
            .padding()
            
            HStack {
                HStack(spacing: 16) {
                    Image(systemName: "lock")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Modifier le mot de passe")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding()
            
            Divider()
                .background(.border)
            
            HStack {
                HStack(spacing: 16) {
                    Image(systemName: "eye")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Passer son compte en privé")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                
                Spacer()
                
                Toggle(isOn: .constant(true)) {
                    
                }
                .frame(maxWidth: 60)
            }
            .padding()
            
            Spacer()
            
            NavigationLink(destination: DeleteAccountView()) {
                VStack(spacing: 16) {
                    VStack {
                        HStack {
                            Image(systemName: "trash")
                            Text("Supprimer mon compte")
                        }
                        .fontWeight(.semibold)
                        .foregroundStyle(.red)
                    }
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.red, lineWidth: 2)
                    )
                    .padding(.horizontal, 16)
                    
                    Text("La suppression de toutes les données associées à votre compte est définitive.")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.textSecondary)
                        .padding(.horizontal, 16)
                }
            }
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    SecurityPrivacy()
}
