//
//  RegistrationView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // Logo
            Image(systemName: "apple.logo")
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .padding(.vertical, 80)
            
            // Form fields
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Adresse mail",
                          placeholder: "name@example.com")
                .autocapitalization(.none)
                
                InputView(text: $username,
                          title: "Nom d'utilisateur",
                          placeholder: "What's your name ?")
                
                InputView(text: $password,
                          title: "Mot de passe",
                          placeholder: "Entrez un mot de passe",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirmer le mot de passe",
                          placeholder: "Confirmer le mot de passe",
                          isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            // Sign up button
            Button {
                print("Sign user up..")
            } label: {
                Text("Créer un compte")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 20, height: 48)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            // Sign in link
            Button {
                dismiss()
            } label: {
                HStack(spacing: 4) {
                    Text("Already have an account ?")
                    Text("Sign in")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
