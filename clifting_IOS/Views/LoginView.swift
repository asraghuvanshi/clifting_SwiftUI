//
//  LoginView.swift
//  clifting_IOS
//
//  Created by tecH on 14/03/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var usernameOrEmail: String
    @Binding var password: String
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image("login_header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(UITitles.userName)
                            .font(.title3)
                            .foregroundColor(.black)
                        
                        TextField(UIPlaceholder.usernameOrEmail, text: $usernameOrEmail)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
                            )
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(UITitles.password)
                            .font(.title3)
                            .foregroundColor(.black)
                        
                        SecureField(UIPlaceholder.passwordPlaceholder, text: $password)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
                            )
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text(UIButtonTitle.login.uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .clipShape(.capsule)
                    }
                    HStack(alignment: .center , spacing: 5) {
                        Spacer()
                        Text(UITitles.dontHaveAccount)
                        NavigationLink(destination: SignupView(usernameOrEmail: .constant(""), password: .constant(""))) {
                            Text(UIButtonTitle.signUp)
                        }
                        Spacer()

                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea(.keyboard) // Optional: Adjust for keyboard
    }
}
