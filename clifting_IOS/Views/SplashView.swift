//
//  SplashView.swift
//  clifting_IOS
//
//  Created by Amit Raghuvanshi on 14/03/25.
//

import SwiftUI

import SwiftUI

struct SplashView: View {
    
    private let titleFont = Font.system(size: 28, weight: .bold, design: .default)
    private let subtitleFont = Font.system(size: 18, weight: .semibold, design: .default)
    @State private var usernameOrEmail = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            ZStack {
                Image(UIImageName.splashImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Text(UITitles.splashTitle)
                        .font(titleFont)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.9)
                    
                    Text(UITitles.splashSubtitle)
                        .font(subtitleFont)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.9)
                        .lineLimit(nil)
                        .padding(.bottom , 50)
                    
                    NavigationLink(destination: LoginView(usernameOrEmail: $usernameOrEmail, password: $password)) {
                        Text(UIButtonTitle.getStarted.uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.9)
                            .background(Color.black.opacity(1))
                            .clipShape(Capsule())
                            .padding(.horizontal, 20)
                    }
                }
                .padding(20)
            }
        }
    }
}

