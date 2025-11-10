//
//  ForgotPasswordView.swift
//  Scoreboard
//
//  Created by Volnei Foss on 10/11/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    enum Constants {
        // Strings
        static let title = "forgot_password_title".localized
        static let subtitle = "forgot_password_subtitle".localized
        
        static let emailInput = "signIn_email_input".localized
        static let emailLabel = "signIn_email_label".localized
        
        static let resetTitle = "forgot_password_reset_title".localized
        static let backToSignIn = "forgot_password_back_to_sign_in".localized
        
        // Sizes
        static let iconSize: CGFloat = 40
        static let iconFrameSize: CGFloat = 100
        static let iconHeight: CGFloat = 100
        static let iconBottomPadding: CGFloat = 24
        
        static let textSpacing: CGFloat = 8
        
        static let inputLabelSpacing: CGFloat = 4
        static let inputHorizontalPadding: CGFloat = 12
        static let inputVerticalPadding: CGFloat = 12
        static let inputCornerRadius: CGFloat = 8
        static let inputBorderWidth: CGFloat = 1
        static let inputTopPadding: CGFloat = 24
        static let inputHorizontalContainerPadding: CGFloat = 16
        
        static let resetVerticalPadding: CGFloat = 12
        static let resetCornerRadius: CGFloat = 8
        static let resetContainerPadding: CGFloat = 16
        static let resetVerticalContainerPadding: CGFloat = 16
        
        static let backIconSize: Font = .body.bold()
        static let backVerticalPadding: CGFloat = 12
    }
    
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            forgotIcon
            textViews
            inputView
            resetButton
        }
    }
    
    private var forgotIcon: some View {
        VStack {
            Image(systemName: "lock")
                .foregroundStyle(.onboardHighBg)
                .font(.system(size: Constants.iconSize))
                .background {
                    Circle()
                        .fill(.onboardLowBg.opacity(0.2))
                        .frame(width: Constants.iconFrameSize, height: Constants.iconFrameSize)
                }
        }
        .frame(height: Constants.iconHeight)
        .padding(.bottom, Constants.iconBottomPadding)
    }
    
    private var textViews: some View {
        VStack(spacing: Constants.textSpacing) {
            Text(Constants.title)
                .font(.title)
            Text(Constants.subtitle)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
    
    private var inputView: some View {
        VStack(alignment: .leading, spacing: Constants.inputLabelSpacing) {
            Text(Constants.emailLabel)
                .font(.callout)
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
        .padding(.horizontal, Constants.inputHorizontalContainerPadding)
        .padding(.top, Constants.inputTopPadding)
    }
    
    private var resetButton: some View {
        VStack {
            Button {
                
            } label: {
                Text(Constants.resetTitle)
                    .font(.callout.bold())
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding(.vertical, Constants.resetVerticalPadding)
                    .background(
                        RoundedRectangle(cornerRadius: Constants.resetCornerRadius)
                            .fill(.onboardLowBg)
                    )
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "chevron.left")
                        .font(Constants.backIconSize)
                        .foregroundStyle(.onboardLowBg)
                    
                    Text(Constants.backToSignIn)
                        .font(.callout.bold())
                        .foregroundStyle(.onboardLowBg)
                        .padding(.vertical, Constants.backVerticalPadding)
                }
            }
        }
        .padding(.horizontal, Constants.resetContainerPadding)
        .padding(.vertical, Constants.resetVerticalContainerPadding)
    }
}

#Preview {
    ForgotPasswordView()
}
