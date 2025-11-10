//
//  SignInView.swift
//  Scoreboard
//
//  Created by Volnei Foss on 10/11/25.
//

import SwiftUI

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
        
        // Sizes
        static let headerSpacing: CGFloat = 12
        static let headerHorizontalPadding: CGFloat = 16
        
        static let inputVerticalSpacing: CGFloat = 20
        static let labelSpacing: CGFloat = 4
        static let inputHorizontalPadding: CGFloat = 12
        static let inputVerticalPadding: CGFloat = 14
        static let inputCornerRadius: CGFloat = 8
        static let inputBorderWidth: CGFloat = 1
        static let inputTopPadding: CGFloat = 24
        static let inputHorizontalViewPadding: CGFloat = 16
        
        static let buttonCornerRadius: CGFloat = 8
        static let buttonVerticalPadding: CGFloat = 16
        static let buttonHorizontalPadding: CGFloat = 16
        static let buttonTopPadding: CGFloat = 28
    }
    
    @State private var email: String = ""
    @State private var password: String = ""
    
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
        VStack(alignment: .leading, spacing: Constants.headerSpacing) {
            Text(Constants.signInTitle)
                .font(.largeTitle)
            
            Text(Constants.signInSubtitle)
                .font(.headline)
                .foregroundStyle(.gray.opacity(0.9))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, Constants.headerHorizontalPadding)
    }
    
    private var inputViews: some View {
        VStack(spacing: Constants.inputVerticalSpacing) {
            
            VStack(alignment: .leading, spacing: Constants.labelSpacing) {
                Text(Constants.emailLabel)
                TextField(Constants.emailInput, text: $email)
                    .padding(.horizontal, Constants.inputHorizontalPadding)
                    .padding(.vertical, Constants.inputVerticalPadding)
                    .background(
                        RoundedRectangle(cornerRadius: Constants.inputCornerRadius)
                            .fill(Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: Constants.inputCornerRadius)
                            .stroke(Color.gray.opacity(0.5), lineWidth: Constants.inputBorderWidth)
                    )
            }
            
            VStack(alignment: .leading, spacing: Constants.labelSpacing) {
                Text(Constants.passwordLabel)
                TextField(Constants.passwordInput, text: $password)
                    .padding(.horizontal, Constants.inputHorizontalPadding)
                    .padding(.vertical, Constants.inputVerticalPadding)
                    .background(
                        RoundedRectangle(cornerRadius: Constants.inputCornerRadius)
                            .fill(Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: Constants.inputCornerRadius)
                            .stroke(Color.gray.opacity(0.5), lineWidth: Constants.inputBorderWidth)
                    )
                
                NavigationLink {
                    ForgotPasswordView()
                } label: {
                    Text(Constants.forgotPasswordTitle)
                        .font(.callout)
                        .foregroundStyle(.onboardHighBg)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, Constants.inputTopPadding)
    }
    
    private var signInButtons: some View {
        VStack {
            Button {
                // Sign in action
            } label: {
                Text(Constants.signInButton)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding(.vertical, Constants.buttonVerticalPadding)
                    .background(
                        RoundedRectangle(cornerRadius: Constants.buttonCornerRadius)
                            .fill(.onboardHighBg)
                    )
            }
        }
        .padding(.horizontal, Constants.buttonHorizontalPadding)
        .padding(.top, Constants.buttonTopPadding)
    }
}

#Preview {
    SignInView()
}
