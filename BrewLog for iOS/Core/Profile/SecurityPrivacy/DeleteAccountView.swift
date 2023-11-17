//
//  DeleteAccountView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 17/11/2023.
//

import SwiftUI

struct DeleteAccountView: View {
    @State private var password: String = ""
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "chevron.left")
            Text("Supprimer son compte")
        }
        .font(.title3)
        .fontWeight(.bold)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Êtes-vous sûr de vouloir supprimer votre compte ?")
                .font(.headline)
            
            Text("Attention : Il s'agit d'une action permanente qui interviendra dès que vous aurez confirmé votre décision.")
            Text("Si vous avez des difficultés à utiliser l'application, consulter le lien ci-dessous :")
            
            HStack {
                HStack(spacing: 16) {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Obtenir de l'aide")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                
                Spacer()
                    
                Image(systemName: "chevron.right")
            }
            .padding(.vertical, 16)
            
            Divider()
                .padding(.bottom, 40)
            
            VStack {
                Text("Confirmer le mon de pase")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image(systemName: "lock")
                    SecureField("Mot de passe", text: $password)
                        .textContentType(.password)
                }
                .font(.body)
                .foregroundStyle(.textSecondary)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(.backgroundElevated)
                .cornerRadius(16)
                
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
        
        VStack(spacing: 16) {
            Button {
                // Action to perform when the button is tapped
            } label: {
                HStack {
                    Image(systemName: "trash")
                    Text("Supprimer définitivement mon compte")
                }
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(Color.red.opacity(0.3))
            .cornerRadius(16)
            
            Text("La suppression de toutes les données associées à votre compte est définitive.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundStyle(.textSecondary)
        }
        .padding()
        
        Spacer()
        
    }
}

#Preview {
    DeleteAccountView()
}
