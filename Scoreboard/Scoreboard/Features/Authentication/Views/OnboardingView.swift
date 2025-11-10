//
//  OnboardingView.swift
//  Scoreboard
//
//  Created by Volnei Foss on 09/11/25.
//

import SwiftUI

struct OnboardingView: View {
    
    enum Constants {
        // Strings
        static let appName = "app_name".localized
        static let onboardingTitle = "onboarding_title".localized
        static let signInTitle = "onboarding_sign_in".localized
        static let createAccountTitle = "onboarding_register".localized
        static let privacyTitle = "onboarding_privacy".localized
        static let termsTitle = "onboarding_terms".localized
        static let helpTitle = "onboarding_help".localized
        
        // Sizes
        static let bodySpacing: CGFloat = 8
        static let onboardingIcon: CGFloat = 40
        static let onboardingIconFrame: CGFloat = 100
        static let onboardingIconPadding: CGFloat = 40
        
        static let textSpacing: CGFloat = 8
        static let textPadding: CGFloat = 40
        
        static let buttonSpacing: CGFloat = 12
        static let buttonRadius: CGFloat = 8
        
        static let deepLinkSpacing: CGFloat = 16
        static let deepLinkPadding: CGFloat = 40
    }
    

    let gradientColors: [Color] = [.onboardLowBg, .onboardHighBg]
    
    var body: some View {
        NavigationView {
            VStack(spacing: Constants.bodySpacing){
                onboardingIcon
                textViews
                buttonViews
                deepLinks
            }
            .ignoresSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: gradientColors),
                    startPoint: .leading,
                    endPoint: .trailing)
            )
        }
    }
    
    private var onboardingIcon: some View {
        Image(systemName: "list.clipboard")
            .foregroundStyle(.white)
            .font(.system(size: Constants.onboardingIcon))
            .background {
                Circle()
                    .fill(
                        .white.opacity(0.5)
                    )
                    .frame(width: Constants.onboardingIconFrame, height: Constants.onboardingIconFrame)
                    
            }
            .padding(.bottom, Constants.onboardingIconPadding)
    }
    
    private var textViews: some View {
        VStack(spacing: 8){
            Text(Constants.appName)
                .font(.system(.largeTitle, design: .rounded))
                .foregroundStyle(.white)
            Text(Constants.onboardingTitle)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .padding(.bottom, Constants.textPadding)
    }
    
    private var buttonViews: some View {
        VStack(spacing: Constants.buttonSpacing){
            
            NavigationLink {
                
            } label: {
                Text(Constants.signInTitle)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.onboardHighBg)
                    .padding(.vertical)
                    .background(
                        RoundedRectangle(cornerRadius: Constants.buttonRadius)
                            .fill(.white)
                    )
            }
            
            NavigationLink {
                
            } label: {
                Text(Constants.createAccountTitle)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .overlay {
                        RoundedRectangle(cornerRadius: Constants.buttonRadius)
                            .stroke(.white, lineWidth: 1)
                    }
            }
        }
        .padding(.horizontal)
    }
    
    private var deepLinks: some View {
        HStack(spacing: Constants.deepLinkSpacing){
            NavigationLink {
                
            } label: {
                Text(Constants.termsTitle)
            }
            
            NavigationLink {
                
            } label: {
                Text(Constants.privacyTitle)
            }
            
            NavigationLink {
                
            } label: {
                Text(Constants.helpTitle)
            }
        }
        .padding(.top, Constants.deepLinkPadding)
        .foregroundStyle(.white)
    }
}

#Preview {
    OnboardingView()
}
