//
//  SignInView.swift
//  Scoreboard
//
//  Created by Volnei Foss on 10/11/25.
//

import SwiftUI

struct SignInView: View {
    
    enum Constants {
        // Strings
        static let signInTitle = "signIn_title".localized
        static let signInSubtitle = "signIn_subtitle".localized
        
        static let emailLabel = "signIn_email_label".localized
        static let passwordLabel = "signIn_password_label".localized
        
        static let emailInput = "signIn_email_input".localized
        static let passwordInput = "signIn_password_input".localized
        
        static let forgotPasswordTitle = "signIn_forgot_password".localized
        
        static let signInButton = "onboarding_sign_in".localized
    }
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                signInHeader
                inputViews
                signInButtons
                Spacer()
            }
        }
    }
    
    private var signInHeader: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(Constants.signInTitle)
                .font(.largeTitle)
            
            Text(Constants.signInSubtitle)
                .font(.headline)
                .foregroundStyle(.gray.opacity(0.9))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
    
    private var inputViews: some View {
        VStack(spacing: 20){
            VStack(alignment: .leading, spacing: 4){
                Text(Constants.emailLabel)
                TextField(Constants.emailInput, text: $email)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
            }
            
            VStack(alignment: .leading, spacing: 4){
                Text(Constants.passwordLabel)
                TextField(Constants.passwordInput, text: $password)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                
                NavigationLink {
                    
                } label: {
                    Text(Constants.forgotPasswordTitle)
                        .font(.callout)
                        .foregroundStyle(.onboardHighBg)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

            }
        }
        .padding(.horizontal)
        .padding(.top, 24)
    }
    
    private var signInButtons: some View {
        VStack {
            Button {
                
            } label: {
                Text(Constants.signInButton)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding(.vertical)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.onboardHighBg)
                    )
            }
        }
        .padding(.horizontal)
        .padding(.top, 28)
    }
}

#Preview {
    SignInView()
}
