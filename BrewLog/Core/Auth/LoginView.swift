//
//  LoginView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
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
                    
                    InputView(text: $password,
                              title: "Mot de passe",
                              placeholder: "Entrez votre mot de passe",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                // Sign in button
                Button {
                    print("Log user in..")
                } label: {
                    Text("Se connecter")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.white)
                .frame(width: UIScreen.main.bounds.width - 20, height: 48)
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                // Sign up link
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 4) {
                        Text("Don't have an account ?")
                        Text("Sign up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
